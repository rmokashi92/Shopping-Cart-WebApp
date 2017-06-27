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
<title>User Login</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.ConnectDb" scope = "session"></jsp:useBean>
<body>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>

<div>

<h2>Login</h2>
<form method = "post" action = "LoginVerify.jsp">

Username : <input type = "text" id = "uname" name = "uname" placeholder = "Enter Username" required/><br><br>
Password : <input type = "password" id = "pwd" name = "pwd" placeholder = "Enter Password" required/><br><br>

<input type = "Submit" value = "Login" name = "login"/>


</form>

</div>



</body>
</html>