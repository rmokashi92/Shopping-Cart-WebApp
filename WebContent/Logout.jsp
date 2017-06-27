<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
h2 {text-align : center}
h3 {text-align : center}
div {text-align : center}
a {text-align :center}
body {background-color : powderblue}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>
<div>

<hr>
<h2>You have logged out successfully!</h2>
<%session.invalidate(); %>

<br><br><br>

<a href = "loginpage.jsp">Back to Login</a>
</div>
</body>
</html>