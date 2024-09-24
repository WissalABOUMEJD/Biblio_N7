<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
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

        .dashboard-item {
            text-align: center;
            padding: 20px;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
            background-color: #f8f9fa;
            transition: background-color 0.3s;
            margin: 10px;
        }

        .dashboard-item:hover {
            background-color: #e2e6ea;
        }

        .dashboard-icon {
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .dashboard-title {
            font-family: 'Roboto', sans-serif;
            font-weight: 700;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <jsp:include page="navbarAdmin.jsp"/>
    
    <div class="container">
        <h2 class="dashboard-title">Admin Dashboard</h2>
        <div class="row justify-content-center">
            <div class="col-md-3 mb-4">
                <a href="BookServlet?op=list" class="text-decoration-none text-dark">
                    <div class="dashboard-item">
                        <div class="dashboard-icon">&#128218;</div>
                        List Books
                    </div>
                </a>
            </div>
            <div class="col-md-3 mb-4">
                <a href="BookServlet?op=add" class="text-decoration-none text-dark">
                    <div class="dashboard-item">
                        <div class="dashboard-icon">&#10133;</div>
                        Add Book
                    </div>
                </a>
            </div>
            <div class="col-md-3 mb-4">
                <a href="AuthorServlet?op=add" class="text-decoration-none text-dark">
                    <div class="dashboard-item">
                        <div class="dashboard-icon">&#128100;</div>
                        Add Author
                    </div>
                </a>
            </div>
            <div class="col-md-3 mb-4">
                <a href="ReservationServlet?op=list" class="text-decoration-none text-dark">
                    <div class="dashboard-item">
                        <div class="dashboard-icon">&#128197;</div>
                        View Reservations
                    </div>
                </a>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

