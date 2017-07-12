<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<header class="w3-container w3-light-grey w3-center" style="padding:30px 16px">
 <img src = "amazon_logo_RGB.jpg" height="100" width="250" align = "left"/>
 <h2 class="w3-margin">Hello, Guest</h2>

<h3 class="w3-margin">WELCOME TO ELECTRONICS SECTION:</h3>
</header>

<div class="w3-row-padding w3-orange w3-padding-64 w3-container w3-center" >
  <div class="w3-content">
<div>
<form method = "post" action = "CartServlet">
<select name = "products" size = "7" multiple>
<option value = "usb">USB</option>
<option value = "tv">TV</option>
<option value = "laptop">Laptop</option>
<option value = "mobile">Mobile</option>
<option value = "watch">Wrist Watch</option>
<option value = "oven">Microwaves</option>
<option value = "fridge">Refrigerator</option>
</select><br><br>
<input type = "Submit" id = "addtocart" value="Add to Cart" name = "addtocart"/>
</form><br><br>

<button class="w3-button w3-white w3-padding-large w3-large w3-margin-top" onclick="location.href='loginNewUser.jsp'">New User? Register!</button> 
<br><br>
<button class="w3-button w3-white w3-padding-large w3-large w3-margin-top" onclick="location.href='loginpage.jsp'">Existing User? Login!</button>

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