<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h2 {text-align : center}
h3 {text-align : center}
div {text-align : center}
body {background-color : powderblue}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User</title>
</head>

<body>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>
<hr>
<h3>Enter following credentials</h3>
<div>
<form method = "post" action = "successpage.jsp">
First Name : <input type = "text" id = "fname" name = "fname"/><br><br>
Last Name : <input type = "text" id = "lname" name = "lname"/><br><br>
UserName : <input type = "text" id = "uname" name = "uname"/><br><br>
Email : <input type = "text" id = "email" name = "email"/><br><br>
Password : <input type = "password" id = "password" name = "password"/><br><br>

<input type = "Submit" id = "register" name = "register"/>
</form>

</div>
</body>
</html>