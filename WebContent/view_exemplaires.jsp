<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.enseeiht.biblio.entity.Exemplaire" %>
<%@ page import="fr.enseeiht.biblio.entity.Book" %>
<%@ page import="fr.enseeiht.biblio.entity.Reservation" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Exemplaires</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet">
    <style>
        /* CSS Variables */
        :root {
            --primary-color: #4458dc;
            --primary-color2: #854fee;
            --title-color: #ffffff;
            --text-color: #777777;
            --border-color: #201f1f17;
            --gradient-color: linear-gradient(90deg, #4458dc 0%, #854fee 100%);
            --shadow-color: 0px 10px 30px rgba(118, 85, 225, 0.3);
            --box-shadow: 0px 10px 30px rgba(57, 56, 61, 0.205);
            --navbar-bg-color: #070133;

            /* Font family variables */
            --roboto: 'Roboto', Cambria;
            --library-font: 'Arial Black', Gadget, sans-serif;
        }

        .navbar-brand {
            font: bold 1.5rem var(--library-font);
            display: flex;
            align-items: center;
            margin-left: 90px;
            color: var(--title-color);
        }

        .navbar-brand img {
            height: 80px;
            margin-right: 10px;
            position: relative;
            top: -10px;
        }

        .navbar {
            padding: 1rem 10rem;
            background-color: var(--navbar-bg-color);
        }

        .navbar-nav {
            margin-left: auto;
        }

        .nav-link {
            font: normal 600 15px/2px var(--roboto);
            text-transform: uppercase;
            padding: 1.7rem;
            color: var(--title-color);
            margin-right: 20px;
        }

        .gradient-text {
            background: var(--gradient-color);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .nav-link:hover {
            background: var(--gradient-color);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        html, body {
            margin: 0;
            box-sizing: border-box;
            width: 100%;
            height: 100%;
            font-family: 'Roboto', sans-serif;
        }

        .container {
            max-width: 800px;
            margin: auto;
            padding-top: 50px;
        }

        .custom-table {
            margin-top: 15px;
        }

        .table-title {
            font-family: 'Roboto', sans-serif;
            font-weight: 700;
            text-align: center;
            margin-top: 20px;
        }

        .btn-return {
            background-color: var(--primary-color);
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 0.25rem;
            cursor: pointer;
        }

        .btn-return:hover {
            background-color: var(--primary-color2);
        }

        .btn-return:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <jsp:include page="navbarAdmin.jsp"/>
    
    <div class="container">
        <h2 class="table-title">Exemplaires of <%= ((Book) request.getAttribute("book")).getTitle() %></h2>
        <div class="custom-table">
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Disponibilité</th>
                        <th>Réservé par</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Exemplaire> exemplaires = (List<Exemplaire>) request.getAttribute("exemplaires");
                        if (exemplaires != null) {
                            for (Exemplaire exemplaire : exemplaires) {
                                Reservation reservation = exemplaire.getCurrentReservation();
                    %>
                    <tr>
                        <td><%= exemplaire.getId() %></td>
                        <td><%= exemplaire.getDisponible() ? "Disponible" : (reservation.isValidated() ? "Validée" : "Réservé") %></td>
                        <td><%= reservation != null && !exemplaire.getDisponible() ? reservation.getStudent().getFirstName() + " " + reservation.getStudent().getLastName() : "N/A" %></td>
                        <td>
                            <form action="AdminServlet" method="post" class="d-inline">
                                <input type="hidden" name="op" value="return">
                                <input type="hidden" name="exemplaireId" value="<%= exemplaire.getId() %>">
                                <button type="submit" class="btn btn-return" <%= (reservation == null || !reservation.isValidated()) ? "disabled" : "" %>>Return</button>
                            </form>
                        </td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4" class="text-center">No exemplaires available</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
        <div class="text-center">
            <a href="./BookServlet?op=list" class="btn btn-primary">Back to book list</a>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
