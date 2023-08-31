<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
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

    <title>Create Post | RecipeShare</title>
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

      .create-post-container {
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        width: 80%;
        margin: 0 auto;
        margin-top: 80px;
        display: flex;
        align-items: top;
        /* justify-content: center; */
      }

      .create-post-heading {
        font-size: 24px;
        color: #333;
        margin-bottom: 20px;
      }

      .form-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 70%;
      }

      .image-container {
        width: 200px;
        height: 200px;
        border: 1px solid #ddd;
        border-radius: 15px;
        margin-top: 55px;
        margin-left: -20px;
      }

      .image-preview {
        width: 100%;
        height: 100%;
        border-radius: 15px;
        object-fit: cover;
        pointer-events: none;
      }

      input[type="text"],
      input[type="file"],
      input[type="number"],
      textarea,
      select {
        width: 100%;
        margin-bottom: 10px;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
      }

      input[type="text"]:focus,
      input[type="file"]:focus,
      input[type="number"]:focus,
      textarea:focus,
      select:focus {
        outline: none;
        border: 1px solid #fac24e;
      }

      textarea {
        resize: vertical;
        height: 150px;
      }

      select {
        background-color: #fff;
      }

      button[type="submit"] {
        background-color: #fac24e;
        width: 100%;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
      }

      button[type="submit"]:hover {
        background-color: #e0a542;
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
      <div class="user">
          <a href="{% url 'profile_page' %}" class="user-profile">
              <p style="overflow: hidden;"><i class="fa-solid fa-user"></i>&nbsp;<%= session.getAttribute("username") %></p>
          </a>
          <div class="dropdown">
              <a href="profile_page.html" class="">Your Profile</a>
              <a href="logout.jsp">Logout</a>
          </div>
      </div>
  </header>

    <div class="create-post-container">
      <div class="form-container">
        <form
          class="form-container"
          action="#""
          method="post"
          enctype="multipart/form-data"
        >
          <div class="create-post-heading">
            Create New <span style="color: #fac24e">Post</span>
          </div>
          <input
            type="text"
            name="recipe_name"
            placeholder="Title of Recipe"
            required
          />
          <label style="margin-left: -360px; margin-bottom:5px;color: grey; font-size: 15px;" for="image-input"
            >Upload Image:</label
          >
          <input
            type="file"
            id="image-input"
            name="recipe_image"
            accept="image/*"
            required
          />
          <input
            type="number"
            name="recipe_time"
            placeholder="Time Taken (in minutes)"
            required
          />
          <textarea
            name="description"
            placeholder="Description"
            required
          ></textarea>
          <textarea
            name="ingredients"
            placeholder="Ingredients"
            required
          ></textarea>
          <textarea name="steps" placeholder="Steps" required></textarea>
          <select name="recipe_type">
            <option value="none">--type of recipe--</option>
            <option value="breakfast">Breakfast</option>
            <option value="lunch">Lunch</option>
            <option value="dinner">Dinner</option>
            <option value="dessert">Dessert</option>
          </select>
          <button type="submit">Post to Feed</button>
        </form>
      </div>
      <div class="image-container">
        <img
          style="font-size: 12px"
          class="image-preview"
          id="image-preview"
          src="placeholder-image.jpg"
          alt="recipe-image-preview"
        />
      </div>
    </div>
    <script>
      const imageInput = document.getElementById("image-input");
      const imagePreview = document.getElementById("image-preview");

      imageInput.addEventListener("change", function () {
        const selectedFile = imageInput.files[0];
        if (selectedFile) {
          const objectURL = URL.createObjectURL(selectedFile);
          imagePreview.src = objectURL;
          imagePreview.style.display = "block";
        } else {
          imagePreview.src = "#";
          imagePreview.style.display = "none";
        }
      });
    </script>
  </body>
</html>

</html>
