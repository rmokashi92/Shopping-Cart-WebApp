<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
h2 {text-align : center}
h3 {text-align : center}
div {text-align : center}
body {background-color : powderblue}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>
<h2>Hello, Guest</h2>

<h3>WELCOME TO ELECTRONICS SECTION:</h3>
<div>
<form method = "post" action = "CartServlet">
<select multiple>
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

<a href = "loginNewUser.jsp">New User? Register!</a><br><br>
<a href = "loginpage.jsp">Existing User? Login!</a>


</div>
</body>
</html>