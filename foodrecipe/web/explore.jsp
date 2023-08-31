<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">

  <head>
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
    <title>Explore | RecipeShare</title>
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

      .explore {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        margin-top: 70px;
        width: 100%;
        height: 88.5vh;
        background-color: #ffecc5;
      }
      .explore .heading h1 {
        margin-top: -80px;
        font-size: 50px;
      }
      .explore .search-box {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        margin-top: 30px;
        width: 850px;
        height: 50px;
        background-color: white;
        border: 2px solid white;
        border-radius: 50px;
      }
      .explore .search-box:focus-within {
        border: 2px solid #fac24e;
      }
      .explore .search-box input {
        font-size: 1rem;
        margin-left: 10px;
        width: 800px;
        padding: 10px;
        height: 50px;
        border: 0px;
        background-color: transparent;
        outline: none;
      }
      .explore .search-box input:focus {
        outline: none;
      }
      .box {
        display: flex;
        align-items: center;
      }
      .explore .search-box button {
        background-color: transparent;
        border: none;
        cursor: pointer;
      }
      .explore .search-box button:hover {
        color: #fac24e;
      }
      .results {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: top;
        width: 100%;
        height: 100vh;
        background-color: white;
      }
      .results h3 {
        margin-top: 60px;
        /*font-size: 40px;*/
        font-weight: 200;
      }
    </style>
  </head>

  <body>
    <header>
      <div class="logo">
        <img
          src="images/logo.png"
          alt="logo"
          height="32px"
          width="32px"
        />&nbsp;Recipe<span style="color: #fac24e">Share</span>
      </div>
      <div class="menu">
        <a href="home.jsp">Home</a>
        <a href="explore.jsp" id="activepage">Explore</a>
        <a href="MP.jsp">Planner</a>
        <a href="shopping.jsp">Shopping</a>
        <a href="saved.jsp">Saved</a>
      </div>
      <div class="user">
        <a href="{% url 'profile_page' %}" class="user-profile">
          <p style="overflow: hidden">
            <i class="fa-solid fa-user"></i>&nbsp;<%= session.getAttribute("username") %>
          </p>
        </a>
        <div class="dropdown">
          <a href="profile_page.jsp" class="">Your Profile</a>
          <a href="#">Logout</a>
        </div>
      </div>
    </header>
    <div class="explore">
      <div class="heading">
        <h1>Explore more Recipes.</h1>
      </div>
      <div class="search-box">
        <form>
          <div class="box">
            <input
              type="text"
              name="search-input"
              placeholder="search for recipes..."
            />
            <button type="submit">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </form>
      </div>
    </div>

    <div class="results">
        <h3>Your Results Appear here...</h3>
    </div>
  </body>
</html>
