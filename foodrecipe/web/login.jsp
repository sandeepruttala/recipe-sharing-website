<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Sedgwick+Ave&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        *{
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            padding: 0px;
            margin: 0px;
            user-select: none;
        }
        body{
            background-color: #f8f8f8;
        }
        .logo{
            position: fixed;
            top: 115px;
            left: 925px;
            z-index: 1;
            pointer-events: none;
        }
        .box{
            display: flex;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: white;
            width: 650px;
            height: 400px;
            box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.2); ;
        }
        .image{
            width:40%;
        }
        .image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            pointer-events: none;
            user-select: none;
        }
        .form{
            width:60%;
            text-align: center;
        }
        .form h1{
            margin: 10% 0% 5% 0%;
        }
        .form input{
            font-size: 14px;
            width: 250px;
            height: 35px;
            border: 0px;
            outline: none;
            border-bottom: 1px solid rgb(172, 172, 172);
            padding: 5px;
            transition: all ease 0.3s;
        }
        .form input:focus{
            outline: none;
            border-bottom: 0.1px solid rgb(0, 0, 0);
        } 

        .form input:focus::placeholder {
            color: black;
        }
        .fa-eye, .fa-eye-slash{
            display:none;
            position: absolute;
            right: 60px;
            bottom: 185px;
            color: grey;
            cursor: pointer;
        }
        .form button{
            background-color: black;
            color: white;
            border: 0px;
            width: 100px;
            height: 35px;
            margin: 5px 0px 15px 0px;
        }
        .form button:active{
            background-color: rgb(100, 100, 100);
        }
        .form span{
            color: grey;
            font-size: 12px;
            margin-top: 10px;
        }
        .form p{
            color: gray;
            font-size: 12px;
        }
        .form .copy{
            margin: 45px;
        }

    </style>
    <link rel="icon" href="images/logo.ico">
    <title>Recipes | Login</title>
</head>
<body>
    <img src="images/logo.png" width="32px" height="32px" alt="recipes-logo" class="logo">
    <div class="box">
        <div class="image">
            <img src="images/Login-image.jpg" alt="food-recipes" id="main-logo">
        </div>
        <div class="form">
            <h1>Login Here</h1>
            <br>
            <form action="login.jsp" method="post">
                <i class="fa-solid fa-envelope"></i> &nbsp; 
                <input type="email" class="email" id="email" name="email" placeholder="Email Address"required>
                <br><br>
                <i class="fa-solid fa-key"></i> &nbsp;
                <input type="password" class="password" id="password" name="password" placeholder="Password" required>
                <i class="fa-regular fa-eye" id="toggle"></i>
                <br><br>
                <button type="submit">Login</button>
            </form>
            <p>New to Recipes? <a href="register.html">Register Here.</a></p>
            <p class="copy">&copy; 2023 RecipeShare. All rights reserved.</p>
        </div>
    </div>
    <%
        String jdbcURL = "jdbc:mysql://localhost:3306/food";
        String dbUser = "root";
        String dbPassword = "root";
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
    if (request.getMethod().equalsIgnoreCase("post")) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String insertQuery = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            
            if (resultSet.next())
            {
                String userEmail = resultSet.getString("email");
                String userFirstName = resultSet.getString("first_name");
                String userLastName = resultSet.getString("last_name");
                String username = userFirstName + " " + userLastName; 
                session.setAttribute("email", userEmail);
                session.setAttribute("username", username);
                response.sendRedirect("home.jsp");
        }
        else
        {
            out.println("login failed");
        }

            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        }
        }
    %>
    <script>
        const passwordField = document.getElementById("password");
        const toggleIcon = document.getElementById("toggle");

        passwordField.addEventListener("input", function() {
            toggleIcon.style.display = passwordField.value ? "block" : "none";
        });

        toggleIcon.addEventListener("click", function() {
            if (passwordField.type === "password") {
                passwordField.type = "text"; // Show password
                toggleIcon.classList.remove("fa-eye");
                toggleIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password"; // Hide password
                toggleIcon.classList.remove("fa-eye-slash");
                toggleIcon.classList.add("fa-eye");
            }
        });
    </script>
        
</body>
</html>