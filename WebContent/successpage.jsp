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
<title>Success</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.ConnectDb" scope = "session"></jsp:useBean>
<jsp:setProperty name="service" property="*"/>
<body>
<div>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>
<hr>
<h2>Your Account has been created Successfully!</h2><br><br>
<% temp.registerNewUser(service);
%>
<a href = "loginpage.jsp">Proceed to Login</a>
</div>
</body>
</html>