<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
            height: 40px;
            margin-right: 10px;
        }

        .navbar {
            padding: 1rem 10rem;
            background-color: var(--navbar-bg-color);
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
            padding-top: 100px;
        }

        .form-style {
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
            display: block;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: var(--primary-color2);
        }

        .error {
            color: red;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <header class="header_area">
        <div class="main-menu">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="./ENSEEIHT_logo.png" alt="Library Logo">
                        Library
                    </a>
                </div>
            </nav>
        </div>
    </header>

    <div class="container">
        <c:if test="${not empty error}">
            <p class="error">Invalid email or password.</p>
        </c:if>
        <form action="LoginServlet" method="post" class="form-style">
            <div class="form-group">
                <label for="email">Mail:</label>
                <input type="text" name="email" id="email" required placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required placeholder="Enter your password">
            </div>
            <input type="submit" value="Login">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
