<%@ page import="java.util.List" %>
<%@ page import="fr.enseeiht.biblio.entity.Book" %>
<%@ page import="fr.enseeiht.biblio.entity.Exemplaire" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List of Books</title>
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

    </style>
</head>
<body>
    <jsp:include page="navbarStudent.jsp"/>
    
    <div class="container">
        <h1 class="table-title">List of Books</h1>
        <div class="custom-table">
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>Title</th>
                        <th>Publication Year</th>
                        <th>Author</th>
                        <th>Available Copies</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Book> books = (List<Book>) request.getAttribute("books");
                        if (books != null) {
                            for (Book book : books) {
                                long availableCopies = book.getExemplaires().stream().filter(Exemplaire::getDisponible).count();
                                if (availableCopies > 0) {
                    %>
                        <tr>
                            <td><%= book.getTitle() %></td>
                            <td><%= book.getPublication_year() %></td>
                            <td><%= book.getAuthor().getName() %></td>
                            <td><%= availableCopies %></td>
                            <td>
                                <form action="StudentServlet" method="post" class="d-inline">
                                    <input type="hidden" name="op" value="reserve">
                                    <input type="hidden" name="bookId" value="<%= book.getId() %>">
                                    <button type="submit" class="btn btn-outline-primary">Reserve</button>
                                </form>
                            </td>
                        </tr>
                    <%
                                }
                            }
                        } else {
                    %>
                        <tr>
                            <td colspan="5" class="text-center">No books available</td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
