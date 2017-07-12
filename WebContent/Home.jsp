<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style1.css" />
<title>Home Page</title>

<script>
var elements = document.cookie.split('=');
var info = elements[1];
console.log(info);
if(info == null)
	{
		window.location = "loginpage.jsp";
	}

</script>



</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<body>
<div class="w3-top">
  <div class="w3-bar w3-green w3-card-2 w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-green" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="Home.jsp" class="w3-bar-item w3-button w3-padding-large w3-left-align w3-white">Home</a>
    <a href="Logout.jsp" class="w3-bar-item w3-button w3-padding-large w3-right-align w3-white">Logout</a>
    </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="/home" class="w3-bar-item w3-button w3-padding-large">Home</a>
  </div>
</div>
<header class="w3-container w3-light-grey w3-center" style="padding:50px 16px">
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "left"/>  
  
</header>

<header class="w3-container w3-green w3-center" style="padding:80px 16px">
  <h1 class="w3-margin">Hello, <%=session.getAttribute("uname")%></h1>

<h3 class="w3-margin">WELCOME TO ELECTRONICS SECTION:</h3>
  
</header>



<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container w3-center">
  <div class="w3-content">
   
<div>
<form method = "post" action = "CartServlet">
<select name = "products" size = "7" multiple style="width:200px">
<option value = "USB">USB</option>
<option value = "TV">TV</option>
<option value = "Laptop">Laptop</option>
<option value = "Mobile">Mobile</option>
<option value = "Wrist Watch">Wrist Watch</option>
<option value = "Microwaves">Microwaves</option>
<option value = "Refrigerator">Refrigerator</option>
</select><br><br>
<input type="hidden" name="cookie" id="cookie" value= <%=session.getAttribute("uname")  %> />
<input class="w3-button w3-black w3-padding-large w3-large w3-margin-top" type = "Submit" id = "viewcart" value = "View Cart" name = "viewcart"/>
<input class="w3-button w3-black w3-padding-large w3-large w3-margin-top" type = "Submit" id = "addtocart" value="Add to Cart" name = "addtocart"/>

<h2  class="w3-margin"> You can also add items to your WishList</h2><br><br>
<input class="w3-button w3-black w3-padding-large w3-large w3-margin-top" type = "Submit" id = "viewwish" value = "View Wish List" name = "viewwish"/><br><br>
<input class="w3-button w3-black w3-padding-large w3-large w3-margin-top" type = "Submit" id = "wish" value = "Add to Wish List" name = "wish" />
<!-- <a href = "Logout.jsp">Logout</a> -->


</form><br><br>
  </div>
  </div>
</div>

<footer class="w3-container w3-padding-30 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
</footer>

</body>
</html>