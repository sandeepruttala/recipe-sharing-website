<!DOCTYPE html>

<html>

<head>

  <link rel="stylesheet" type="text/css" href="styles.css">

  <style>

    body {

      margin: 0;

      padding: 0;

      display: flex;

      flex-direction: column;

      align-items: flex-start; /* Align items to the left */

      min-height: 100vh;

      background-color: #f0f0f0;

    }

 

    .right-aligned-heading {

      margin: 20px;

      font-size: 24px;

      margin-left: auto; /* Pushes the heading to the right */
      padding-right:20px;

    }

 

    /* Additional styling */

    .add {

      background-color: green;

      color: white;

      border: none;

      padding: 7px 5px;

      cursor: pointer;

      margin-left: 50px; 
      padding-left:50px;
	text-align:center;

    }

 

    input[type="text"] {

      width: 1230px;

      height: 60px;

      margin-left: 20px;

    }

 

    .saved {

      margin-right: 10px;

      padding-left: 30px;

      padding-top: 20px;


    }

 

    .add1 {

      margin-left: 1150px; /* Pushes the "+ADD" button to the right */

      margin-bottom: 20px; /* Adjust as needed */

      display: flex; /* Add flex display */

      align-items: center; /* Center items vertically */
	text-align:center;

    }

 

    .box {

        width: 100%;

      margin-left: 20px; /* Align to the left */

      display:flex; /* Change to inline-block */

        justify-content: space-between;

      align-items: center; /* Center items vertically */

      padding-top: 10px;

    }

 

    .collections {

      margin-right: 50px;

      padding-left: 20px;

      padding-top: 10px;

    }

    .post{

                width:200px;

                height:200px;

                border:2px solid black;

        }
      .recipes{
		padding-left:20px;
	}

 	.create-collections{
		padding-right:30px;
	}

  </style>

</head>

<body>

  <h2 class="right-aligned-heading">Saved page</h2>

  <div class="saved">

    <h2>Saved</h2>

  </div>

  <div class="add1">

    <button class="add">+ADD</button>

  </div>

  <input type="text" value="+Search recipes">

  <h3 class="collections">Collections</h3>

<div class="box">

  <div class="recently-viewed">

    <h3>Recently Viewed</h3>

    <!-- Add your recently viewed content here -->

  </div>

  <div class="create-collections">

    <h3>+Create Collections</h3>

  </div>

</div>

  <div class="recipes">

    <h2>Recipes</h2>

  </div>

<div class="post">

</div>

</body>

</html>