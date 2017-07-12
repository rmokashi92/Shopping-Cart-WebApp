<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style1.css" />
<title>User Login</title>
</head>
<jsp:useBean id="service" class = "com.demo.model.User" scope= "session"></jsp:useBean>
<jsp:useBean id="temp" class = "com.data.HibernateConnect" scope = "session"></jsp:useBean>
<body>

<header class="w3-container w3-light-grey w3-center" style="padding:20px 16px">
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "left"/>

</header>

<div class="w3-row-padding w3-orange w3-padding-64 w3-container w3-center" >
  <div class="w3-content">
<div>

<h2 class="w3-margin">Login</h2>
<form method = "post" action = "LoginVerify.jsp">

Username : <input type = "text" id = "uname" name = "uname" placeholder = "Enter Username" required/><br><br>
Password : <input type = "password" id = "pwd" name = "pwd" placeholder = "Enter Password" required/><br><br>

<input class="w3-button w3-black w3-padding-large w3-large w3-margin-top" type = "Submit" value = "Login" name = "login"/>


</form>

</div>
</div>
</div>


<footer class="w3-container w3-padding-30 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
</footer>




</body>
</html>