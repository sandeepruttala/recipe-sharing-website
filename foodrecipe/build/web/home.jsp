<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="images/logo.ico">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <title>Recipes | Home</title>
    <style>
        html {
            scroll-behavior: smooth;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            user-select: none;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f5f5;
        }

        #activepage {
            padding: 5px 20px;
            background-color: #ffd47f;
            border-radius: 20px;
        }

        #activepage:hover {
            color: black;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            height: 70px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 100;
        }

        .logo {
            display: flex;
            align-items: center;
            font-weight: 700;
            font-size: 1.2rem;
            color: #333;
        }

        .logo img {
            margin-right: 5px;

        }

        .menu {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .menu a {
            margin: 0 20px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
            font-size: 1rem;
            transition: all ease 0.3s;
        }

        .menu a:hover {
            color: #fac24e;
        }

        .user {
            display: flex;
            align-items: center;
        }

        .user a {
            text-decoration: none;
            color: #333;
            margin-right: 7px;
            font-weight: 500;
            font-size: 1rem;
        }

        .user a:hover {
            color: black;
            transition: all ease 0.3s;
        }

        .user-profile {
            display: flex;
            align-items: center;
            width: 150px;
            text-decoration: none;
            font-weight: 500;
            font-size: 1rem;
        }

        .dropdown {
            position: absolute;
            top: 47px;
            right: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 10px 20px;
            display: none;
        }

        .dropdown a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            font-size: 1rem;
            display: block;
            margin: 10px 0;
        }

        .dropdown a:hover {
            color: #fac24e;
        }

        .user:hover .dropdown {
            display: block;
        }

        .welcome {
            margin-top: 70px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            font-size: 1.2rem;
            font-weight: 500;
            color: #333;
            background-color: #fac24e;
        }

        .welcome button {
            padding: 10px 20px;
            background-color: white;
            color: 333;
            border-radius: 20px;
            cursor: pointer;
            border: none;
            outline: none;
            margin-left: 10px;
        }

        .welcome button:hover {
            background-color: #ffd47f;
            transition: all ease 0.3s;
        }

        .feed {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 600px;
        }

        .feed h2 {
            margin-top: -50px;
            margin-bottom: 40px;
            text-align: center;
            font-size: 2rem;
            font-weight: 700;
            color: #333;
        }

        .posts {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
        }

        .post {
            background-color: #fff;
            width: 300px;
            height: 410px;
            margin: 0 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            /* padding: 10px 20px; */
            border-radius: 20px;
            cursor: pointer;
            transition: all ease 0.3s;
        }

        .post:hover {
            transform: scale(1.05);
        }

        .post .recipe-image {
            width: 300px;
            height: 250px;
            object-fit: cover;
            border-radius: 20px 20px 0 0;
        }

        .post .post-info {
            display: flex;
            flex-direction: column;
            align-items: left;
            padding: 0 20px;
            /* margin-bottom: 10px; */
        }

        .post-info h3 {
            font-size: 1.5rem;
            font-weight: 500;
            margin-left: 2px;
            color: #333;
            margin-bottom: 10px;
        }

        .post-info .author-details {
            display: flex;
            align-items: center;
            font-size: 1.1rem;
            margin-bottom: 10px;
        }

        .post-info .author-details img {
            margin-left: -4px;
        }

        .post-info .time {
            display: flex;
            align-items: center;
            font-size: 1.1rem;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <header>
        <div class="logo">
            <img src="images/logo.png" alt="logo" height="32px" width="32px" />&nbsp;Recipe<span
                style="color: #fac24e">Share</span>
        </div>
        <div class="menu">
            <a id="activepage" href="home.jsp">Home</a>
          <a href="explore.jsp">Explore</a>
          <a href="MP.jsp">Planner</a>
          <a href="shopping.jsp">Shopping</a>
          <a href="saved.jsp">Saved</a>
        </div>
        <div class="user">
            <a href="profile_page.jsp" class="user-profile">
                <p><i class="fa-solid fa-user"></i>&nbsp;<%= session.getAttribute("username") %></p>
            </a>
            <div class="dropdown">
                <a href="profile_page.jsp" class="">Your Profile</a>
                <a href="logout.jsp">Logout</a>
            </div>
        </div>
    </header>
    <div class="welcome">
        <div class="message">Welcome <span style="color: white;"> <%= session.getAttribute("username") %>
            </span>, Get ready to discover delicious recipes and create culinary magic.</div>
        <div class="buttons">
            <a href="#feed"><button>Go to feed</button></a>
        </div>
    </div>
    <div class="feed" id="feed">
        <div class="feed-header">
            <h2>Your <span style="color: #fac24e;">Feed</span></h2>
        </div>
        <div class="posts" id="posts">
            <div class="post">
                <img class="recipe-image" src="images/biriyani.jpg" alt="recipe-image">
                <div class="post-info">
                    <h3>Biriyani</h3>
                    <div class="author-details">
                        <img src="images/profile.png" width="25px" height="25px" style="border-radius:50%;">&nbsp;User 1
                    </div>
                    <div class="time">
                        <i class="fa-regular fa-clock"></i>&nbsp;60min
                    </div>
                    <div class="type">
                        <i class="fa-solid fa-burger"></i>&nbsp;Lunch
                    </div>
                </div>
            </div>
            <div class="post">
                <img class="recipe-image" src="images/cheese-garlic-roast.jpg" alt="recipe-image">
                <div class="post-info">
                    <h3>Cheese Garlic Roast</h3>
                    <div class="author-details">
                        <img src="images/profile.png" width="25px" height="25px" style="border-radius:50%;">&nbsp;User 2
                    </div>
                    <div class="time">
                        <i class="fa-regular fa-clock"></i>&nbsp;40min
                    </div>
                    <div class="type">
                        <i class="fa-solid fa-burger"></i>&nbsp;snack
                    </div>
                </div>
            </div>
            <div class="post">
                <img class="recipe-image" src="images/dosa.jpg" alt="recipe-image">
                <div class="post-info">
                    <h3>Dosa</h3>
                    <div class="author-details">
                        <img src="images/profile.png" width="25px" height="25px"
                            style="border-radius:50%;">&nbsp;User 3
                    </div>
                    <div class="time">
                        <i class="fa-regular fa-clock"></i>&nbsp;10min
                    </div>
                    <div class="type">
                        <i class="fa-solid fa-burger"></i>&nbsp;Breakfast
                    </div>
                </div>
            </div>
        </div>
</body>

</html>