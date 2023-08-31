<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>User Profile | RecipeShare</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="images/logo.ico" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
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
        font-family: "Poppins", sans-serif;
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
      .dropdown{
            position: absolute;
            top: 47px;
            right: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 10px 20px;
            display: none;
        }

        .dropdown a{
            text-decoration: none;
            color: #333;
            font-weight: 500;
            font-size: 1rem;
            display: block;
            margin: 10px 0;
        }

        .dropdown a:hover{
            color: #fac24e;
        }

        .user:hover .dropdown{
            display: block;
        }

      .profile-container {
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        /* box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); */
        width: 60%;
        margin: 0 auto;
        margin-top: 80px;
        display: flex;
      }

      .profile-details {
        flex: 1;
        padding-right: 20px;
      }

      .profile-details h2 {
        font-size: 24px;
        color: #fac24e;
        margin-top: 10px;
      }
      .profile-details p {
        margin-left: 2px;
      }
      .profile-pic {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        background-color: #ddd;
        display: inline-block;
        overflow: hidden;
      }

      .profile-pic img {
        max-width: 100%;
        height: auto;
      }

      .your-posts-container {
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        /* box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); */
        width: 60%;
        margin: 20px auto;
      }

      .your-posts-container .heading {
        display: flex;
        align-items: center;
        justify-content: space-between;
      }

      .create {
        padding: 10px 20px;
        background-color: #fac24e;
        color: #333;
        border-radius: 20px;
        cursor: pointer;
        border: none;
        outline: none;
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
          <a href="home.jsp">Home</a>
          <a href="explore.jsp">Explore</a>
          <a href="MP.jsp">Planner</a>
          <a href="shopping.jsp">Shopping</a>
          <a href="saved.jsp">Saved</a>
      </div>
      <div id="#activepage" class="user">
          <a href="profile_page.jsp" class="user-profile">
              <p style="overflow: hidden;"><i class="fa-solid fa-user"></i>&nbsp;<%= session.getAttribute("username") %></p>
          </a>
          <div class="dropdown">
              <a href="profile_page.jsp" class="">Your Profile</a>
              <a href="logout.jsp">Logout</a>
          </div>
      </div>
  </header>
    <div class="profile-container">
      <div class="profile-details">
        <h1>Profile</h1>
        <h2><%= session.getAttribute("username") %></h2>
        <p style="color: gray"><%= session.getAttribute("email") %></p>
      </div>
      <div class="profile-pic">
        <img  src="images/profile.png" alt="Profile Picture" />
      </div>
    </div>

    <div class="your-posts-container">
      <div class="heading">
        <h2>Your <span style="color: #fac24e">Posts</span></h2>
        <a href="create_post.jsp"><button class="create">Create Post&nbsp;<i class="fa-solid fa-circle-plus"></i></button></a>
      </div>
      
    </div>
  </body>
</html>
