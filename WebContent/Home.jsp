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
<title>Home Page</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<body>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>
<hr>
<h2>Hello, <%=session.getAttribute("uname")%></h2>

<h3>WELCOME TO ELECTRONICS SECTION:</h3>

<div>



<form method = "post" action = "CartServlet">
<select name = "products" size = "7" multiple>
<option value = "USB">USB</option>
<option value = "TV">TV</option>
<option value = "Laptop">Laptop</option>
<option value = "Mobile">Mobile</option>
<option value = "Watch">Wrist Watch</option>
<option value = "Oven">Microwaves</option>
<option value = "Fridge">Refrigerator</option>
</select><br><br>
<input type = "Submit" id = "viewcart" value = "View Cart" name = "viewcart"/>
<input type = "Submit" id = "addtocart" value="Add to Cart" name = "addtocart"/>

<h2> You can also add items to your WishList</h2><br><br>
<input type = "Submit" id = "viewwish" value = "View Wish List" name = "viewwish"/><br><br>
<input type = "Submit" id = "wish" value = "Add to Wish List" name = "wish" />

</form><br><br>


<a href = "Logout.jsp">Logout</a>



</div>

</body>
</html>