<!DOCTYPE html>
<html>

<head>
	<title>
		sharing page
	</title>

	<meta name="viewport"
		content="width=device-width, initial-scale=1">

	<style>
		
		#navlist {
			background-color: #00070d;
			position: absolute;
			width: 100%;
            height:10%;
            border-radius: 25px;
		}
        #navlist1 {
			background-color: #010910;
			position: absolute;
			width: 69%;
            height:10%;
            border-radius: 25px;
            margin-right:-2%;
            
            
		}
		
		#navlist a {
			float:left;
			color: #f2f2f2;
			text-align: center;
			text-decoration: none;
			font-size: 25px;
            margin-left:6%;
            padding:10px;
            margin-top:1%;
            margin-right:-3%;
		}
        #navlist1 a {
			float:left;
			color: #f2f2f2;
			text-align: center;
			text-decoration: none;
			font-size: 25px;
            margin-left:8%;
            padding:10px;
            margin-top:-0.8%;
            margin-right:-3%;
            
		}

       
        * {
            box-sizing: border-box;
          }

          .column1 {
            float: left;
            width: 30%;
            padding: 10px;
            margin-top: 5%;
            height: 1000px; /* Should be removed. Only for demonstration */
          }
          .column2 {
            float: right;
            width: 69%;
            padding: 10px;
            margin-top: 5%;
            height: 1000px; /* Should be removed. Only for demonstration */
          }

          .row:after {
            content: "";
            display: table;
            clear: both;
            text-decoration:none;
          }

          .row1:after {
            content: "";
            display: table;
            clear: both;
          }

          .box{
            width:99%;
            height: 900px;
            background-color: #f2f2f2;
            margin-top:8%;
            border-radius:20px;
            margin-bottom:-200px;
            
          }

          .box1{
            width:99%;
            height: 800px;
            background-color: #f2f2f2;
            margin-top:8%;
            border-radius:20px;
            margin-bottom:-6%;
            
          }

        .avatar {
            
            width: 50px;
            height: 50px;
            border-radius: 25%;
            margin-left:85%;
            padding:5px;
            margin-top:-6%;
            
          }

		.search input[type=text]{
			width:300px;
			height:25px;
			border-radius:25px;
			border: none;
            margin-left:12%;
            padding:5px;
            margin-top: 25px;
		}

		.search{
            margin:5px;
            margin-top:-5px;
            
            
            
            
		}
	</style>
</head>

<body STYLE="BACKGROUND-COLOR:rgb(100, 86, 159)">
    <h1 style="text-align:center;color:rgb(11, 11, 11);;HEIGHT:40PX;">Shopping page</h1>

	<!-- Navbar items -->
	<div id="navlist">
		<a href="home.jsp">Home</a>
		<a href="explore.jsp">Explore</a>
		<a href="MP.jsp">Planner</a>
		<a href="saved.jsp">Saved</a>

		<div class="search">

			<form action="#">
				<input type="text"
					placeholder=" Search item">
			</form>
		</div>
        <div class="avatar">
            <a href="profile.html"><img src="C:\Users\Bobba siva reddy\OneDrive\Pictures\avatar.png" alt="Avatar" class="avatar"></a>
        </div>
        
    </div>
    <div class="row">
        <div class="column1" style="background-color:#01070d;">
          <forms>
          <div class="box" id="left_side">
            <a href="#" target="left_side"style="font-align:center;font-size:30px;margin-left:120px;color:black;">create-newlist<a/>

          </div>
        </div>
        <div class="column2" style="background-color:#000910;">
          <h1 style="text-align:center;color:white">Shopping list</h1>
          <br>
          <forms>
            <!--<input type="button"value="add-items" style="width:20%;height:40px;float:right;font-size:30px;background-color: #25e80b75;font-family:algerian;margin-top:-7%;"/>-->
            <div id="navlist1">
                <a href="#" target="right-side"style="margin-top:10px;">Popular</a>
                <a href="#"target="right-side"style="margin-top:10px;">recently</a>
                <a href="#"target="right-side"style="margin-top:10px;">saved items</a>
            </div>
          </forms>
          <forms>
            <div class="box1" id="right-side">

            </div>
          </forms>
        </div>
    </div>
</body>

</html>