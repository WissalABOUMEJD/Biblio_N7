package fr.enseeiht.biblio.servlet;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.enseeiht.biblio.entity.Exemplaire;
import fr.enseeiht.biblio.entity.Reservation;
import fr.enseeiht.biblio.facade.ExemplaireFacade;
import fr.enseeiht.biblio.facade.ReservationFacade;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    @EJB
    private ReservationFacade reservationFacade;
    
    @EJB
    private ExemplaireFacade exemplaireFacade;

    private static final long serialVersionUID = 1L;

    public AdminServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String op = request.getParameter("op");
        if (op != null && op.equals("reservations")) {
            List<Reservation> reservations = reservationFacade.findAll();
            request.setAttribute("reservations", reservations);
            request.getRequestDispatcher("./admin_reservations.jsp").forward(request, response);
        } else {
            throw new IllegalStateException("This error should never be triggered");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String op = request.getParameter("op");
        if (op != null && op.equals("validate")) {
            int reservationId = Integer.parseInt(request.getParameter("reservationId"));
            Reservation reservation = reservationFacade.find(reservationId);
            reservation.setValidated(true);
            reservationFacade.update(reservation);

            response.sendRedirect("./AdminServlet?op=reservations");
        } else if (op != null && op.equals("return")){
        	int exemplaireId = Integer.parseInt(request.getParameter("exemplaireId"));
            Exemplaire exemplaire = exemplaireFacade.find(exemplaireId);
            Reservation reservation = exemplaire.getCurrentReservation();
            if (reservation != null && reservation.isValidated()) {
            	reservation.setValidated(false);
                exemplaire.setDisponible(true); 
                exemplaireFacade.update(exemplaire);
                reservationFacade.returnBook(reservation.getId());
            }
            response.sendRedirect("BookServlet?op=view_exemplaires&bookId=" + exemplaire.getBook().getId());
        }
        else {
            doGet(request, response);
        }
    }
}
