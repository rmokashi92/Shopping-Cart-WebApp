<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>

<script>
var elements = document.cookie.split('=');
var info = elements[1];
console.log(info);
if(info == null)
	{
		window.location = "loginpage.jsp";
	}

</script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>

<div class="w3-top">
  <div class="w3-bar w3-green w3-card-2 w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-green" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="Home.jsp" class="w3-bar-item w3-button w3-padding-large w3-left-align w3-white">Home</a>
    <a href="Logout.jsp" class="w3-bar-item w3-button w3-padding-large w3-right-align w3-white">Logout</a>
    </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="/home" class="w3-bar-item w3-button w3-padding-large">Home</a>
  </div>
</div>
<header class="w3-container w3-light-grey w3-center" style="padding:50px 16px">
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "left"/>  
  
</header>
<div class="w3-row-padding w3-light-green w3-padding-64 w3-container w3-center" >
  <div class="w3-content">
<div>

<hr>
<h2 class="w3-margin">The following items are present in your cart:</h2>

<table border=1 class="table table-striped">
        <thead>
            <tr>
                <th bgcolor="grey">Product Name</th>
                <th bgcolor="grey">Price</th>
                 <th bgcolor="grey">Quantity</th>
            </tr>
        </thead>
        <tbody>
        
            <c:forEach items="${cartinfo}" var="row">
                <tr>
                    <td bgcolor="white"><c:out value="${row.prodinfo.name}" /></td>
                    <td bgcolor="white"><c:out value="${row.prodinfo.price}" /></td>
                    <td bgcolor="white"><c:out value="${row.count}"/></td>
                    <td><input type="button" value = "Drop"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table><br><br><br>

<br><br><br>

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