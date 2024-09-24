<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fr.enseeiht.biblio.entity.Author" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
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

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;
            border-color: var(--primary-color);
        }

        button[type="submit"] {
            background-color: var(--primary-color);
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 0.25rem;
            cursor: pointer;
            display: block;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: var(--primary-color2);
        }
    </style>
</head>
<body>
    <jsp:include page="navbarAdmin.jsp"/>

    <div class="container">
        <h2 class="text-center my-4">Add a New Book</h2>
        <form action="BookServlet" method="post" class="form-style">
            <input type="hidden" name="op" value="add">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="year">Publication Year:</label>
                <input type="number" id="year" name="publication_year" required>
            </div>
            <div class="form-group">
                <label for="author">Author:</label>
                <select id="author" name="author_id">
                    <% 
                        List<Author> authors = (List<Author>) request.getAttribute("authors");
                        for (Author author : authors) {
                            out.println("<option value=\"" + author.getId() + "\">" + author.getName() + "</option>");
                        }
                    %>
                </select>
            </div>
            <div class="form-group">
                <label for="copies">Number of Copies:</label>
                <input type="number" id="copies" name="copies" required>
            </div>
            <button type="submit">Add Book</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
