<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Admin</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            max-width: 600px;
            margin: auto;
            padding-top: 50px;
        }

        .admin-form {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 0.25rem;
            box-shadow: var(--box-shadow);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
        }

        .form-group input:focus {
            outline: none;
            border-color: var(--primary-color);
        }

        input[type="submit"] {
            background-color: var(--primary-color);
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 0.25rem;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: var(--primary-color2);
        }

        .btn-login {
            background-color: var(--primary-color);
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 0.25rem;
            cursor: pointer;
        }

        .btn-login:hover {
            background-color: var(--primary-color2);
        }
    </style>
</head>
<body>
    <header class="header_area">
        <div class="main-menu">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="./ENSEEIHT_logo.png" alt="Library Logo"> <!-- Update the path to your logo -->
                        Library
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <div class="container">
        <h2>Add New Admin</h2>
        <form action="AddAdminServlet" method="post" class="admin-form">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" name="firstName" id="firstName" placeholder="Enter first name" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" name="lastName" id="lastName" placeholder="Enter last name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" placeholder="Enter password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
