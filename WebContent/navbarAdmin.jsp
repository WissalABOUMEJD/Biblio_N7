<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="./path/to/your/fonts.css" rel="stylesheet">
    <link href="./path/to/your/variables.css" rel="stylesheet">
    <style>
        /* CSS Variables */
        :root {
            --primary-color: #4458dc;
            --primary-color2: #854fee;
            --title-color: #ffffff; /* Updated text color to white */
            --text-color: #777777;
            --border-color: #201f1f17;
            --gradient-color: linear-gradient(90deg, #4458dc 0%, #854fee 100%);
            --shadow-color: 0px 10px 30px rgba(118, 85, 225, 0.3);
            --box-shadow: 0px 10px 30px rgba(57, 56, 61, 0.205);
            --navbar-bg-color: #070133; /* Updated navbar background color to blue */

            /* Font family variables */
            --roboto: 'Roboto', Cambria;
            --library-font: 'Arial Black', Gadget, sans-serif; /* Custom font for library name */
        }

        .navbar-brand {
            font: bold 1.5rem var(--library-font); /* Updated font style for library name */
            display: flex;
            align-items: center;
            margin-left: 90px;
            color: var(--title-color); /* Apply white text color */
        }

        .navbar-brand img {
            height: 80px; /* Increase the height of the logo */
            margin-right: 10px;
            position: relative;
            top: -10px; /* Adjust to make the logo overflow the navbar */
        }

        .navbar {
            padding: 1rem 10rem;
            background-color: var(--navbar-bg-color); /* Apply blue background color */
        }

        .navbar-nav {
            margin-left: auto; /* Move nav items to the right */
            display: flex;
            align-items: center;
        }

        .nav-link {
            font: normal 600 15px/2px var(--roboto);
            text-transform: uppercase;
            padding: 1.7rem;
            color: var(--title-color); /* Apply white text color */
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

        .logout-icon {
            height: 30px; /* Set a small size for the logout image */
            cursor: pointer;
            margin-left: 20px;
        }

        html, body {
            margin: 0;
            box-sizing: border-box;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <header class="header_area">
        <div class="main-menu">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="admin_dashboard.jsp">
                        <img src="./ENSEEIHT_logo.png" alt="Library Logo"> <!-- Update the path to your logo -->
                        Library
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="BookServlet?op=list">List Books</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="BookServlet?op=add">Add Book</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AuthorServlet?op=add">Add Author</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ReservationServlet?op=list">View Reservations</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">
                                    <img src="./canvas.png" alt="Log out" class="logout-icon"> <!-- Update the path to your image -->
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
