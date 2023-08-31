<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;700&display=swap" rel="stylesheet">
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
            top: 90px;
            left: 950px;
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
            width: 700px;
            height: 450px;
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
            margin: 5% 0% 0% 0%;
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
            right: 85px;
            bottom: 155px;
            color: grey;
            cursor: pointer;
        }
        .form button{
            background-color: black;
            color: white;
            border: 0px;
            width: 150px;
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
            margin: 25px;
        }

    </style>
    <link rel="icon" href="images/logo.ico">
    <title>Recipes | Register</title>
</head>
<body>
    <!--<img src="images/logo.png" width="32px" height="32px" alt="recipes-logo" class="logo">-->
    <div class="box">
        <div class="image">
            <img src="images/Login-image.jpg" alt="food-recipes">
        </div>
        <div class="form">
            <h1>Register Here</h1>
            <br>
           <form action="register.jsp" method="post">
                <input type="text" class="firstname" id="firstname" name="firstname" placeholder="First Name" required>
                <br><br>
                <input type="text" class="lastname" id="lastname" name="lastname" placeholder="Last Name" required>
                <br><br>
                <input type="email" class="email" id="email" name="email" placeholder="Email Address" required>
                <br><br>
                <input type="password" class="password" id="password" name="password" placeholder="Password" required>
                <i class="fa-regular fa-eye" id="toggle"></i>
                <br><br>
                <button type="submit">Create Account</button>
            </form>
            <p>Already a Registered User? <a href="login.jsp">Login Here.</a></p>
            <p class="copy">&copy; 2023 RecipeShare. All rights reserved.</p>
        </div>
    </div>
    <%
        String jdbcURL = "jdbc:mysql://localhost:3306/food";
        String dbUser = "root";
        String dbPassword = "root";

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
    if (request.getMethod().equalsIgnoreCase("post")) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String insertQuery = "INSERT INTO users (email, first_name, last_name, password) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            preparedStatement.setString(4, password);

            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("login.jsp");
            } else {
                out.println("Registration failed.");
            }

            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        }
        }
    %>
    <script>
        const passwordBox = document.getElementById("password");
        const toggleIcon = document.getElementById("toggle");

        passwordBox.addEventListener("input", function() {
            toggleIcon.style.display = passwordBox.value ? "block" : "none";
        });

        toggleIcon.addEventListener("click", function() {
            if (passwordBox.type === "password") {
                passwordBox.type = "text"; // Show password
                toggleIcon.classList.remove("fa-eye");
                toggleIcon.classList.add("fa-eye-slash");
            } else {
                passwordBox.type = "password"; // Hide password
                toggleIcon.classList.remove("fa-eye-slash");
                toggleIcon.classList.add("fa-eye");
            }
        });

    const registrationForm = document.querySelector("form");
    const firstnameField = document.getElementById("firstname");
    const lastnameField = document.getElementById("lastname");
    const emailField = document.getElementById("email");
    const passwordField = document.getElementById("password");

    registrationForm.addEventListener("submit", function(event) {
        let isValid = true;

        // Validate first name
        if (!isValidName(firstnameField.value)) {
            alert("First name should not contain numbers.");
            isValid = false;
        }

        // Validate last name
        if (!isValidName(lastnameField.value)) {
            if (isValid) {
                alert("Last name should not contain numbers.");
                isValid = false;
            }
        }

        // Validate email
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(emailField.value)) {
            if (isValid) {
                alert("Please enter a valid Email Address.");
                isValid = false;
            }
        }

        // Validate password constraints
        if (!isValidPassword(passwordField.value)) {
            if (isValid) {
                alert("Password must contain at least 8 characters, including at least one uppercase letter, one lowercase letter, one digit, and one special character.");
                isValid = false;
            }
        }

        if (!isValid) {
            event.preventDefault();
        }
    });

    function isValidName(name) {
        return /^[A-Za-z\s]+$/.test(name);
    }

    function isValidPassword(password) {
        const passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}$/;
        return passwordPattern.test(password);
    }
    </script>
</body>
</html>
