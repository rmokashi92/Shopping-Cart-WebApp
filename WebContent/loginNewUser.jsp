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
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.ConnectDb" scope = "session"></jsp:useBean>
<jsp:setProperty name="service" property="*"/>
<body>

<h3>Enter following credentials</h3>
<div>
<form method = "post">
First Name : <input type = "text" id = "fname" name = "fname"/><br><br>
Last Name : <input type = "text" id = "lname" name = "lname"/><br><br>
UserName : <input type = "text" id = "uname" name = "uname"/><br><br>
Email : <input type = "text" id = "email" name = "email"/><br><br>
Password : <input type = "password" id = "password" name = "password"/><br><br>

<input type = "Submit" id = "register" name = "register"/>
</form>
<% temp.registerNewUser(service); %>
</div>
</body>
</html>