<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Success</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.ConnectDb" scope = "session"></jsp:useBean>
<jsp:setProperty name="service" property="*"/>
<body>
<div>
<h2>Your Account has been created Successfully!</h2><br><br>
<% temp.registerNewUser(service); %>
<a href = "loginpage.jsp">Proceed to Login</a>
</div>
</body>
</html>