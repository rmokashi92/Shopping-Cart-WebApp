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
<title>User Login</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.ConnectDb" scope = "session"></jsp:useBean>
<body>


<div>

<h2>Login</h2>
<form method = "post" action = "LoginVerify.jsp">

Username : <input type = "text" id = "uname" name = "uname"/><br><br>
Password : <input type = "password" id = "pwd" name = "pwd"/><br><br>

<input type = "Submit" value = "Login" name = "login"/>


</form>


</div>



</body>
</html>