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
<title>Success</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.HibernateConnect" scope = "session"></jsp:useBean>
<jsp:setProperty name="service" property="*"/>
<body>
<header class="w3-container w3-light-grey w3-center" style="padding:20px 16px">
   <img src = "amazon_logo_RGB.jpg" height="100" width="250" align = "left"/>
 <h2 class="w3-margin">Thanks for signing up with us!</h2>

</header>

<div class="w3-row-padding w3-green w3-padding-64 w3-container w3-center" >
  <div class="w3-content">
  <div>

<h2 class="w3-margin">Your Account has been created Successfully!</h2><br><br>
<% temp.registerNewUser(service);
%>
<input class="w3-button w3-white w3-padding-large w3-large w3-margin-top" type = "Submit" id = "register" value = "Login Here" onclick="location.href='loginpage.jsp'"/>
</div>
</div>
</div>
</body>
</html>