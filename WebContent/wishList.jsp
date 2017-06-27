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
<title>Insert title here</title>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<img src = "amazon_logo_RGB.jpg" height="100" width="200" align = "middle"/>
<div>

<hr>
<h2>The following items are present in your current WishList:</h2>


<table border=1 align = "center">
        <thead>
            <tr>
                <th>Product Name</th>
            </tr>
        </thead>
        <tbody>
        
            <c:forEach items="${wishInfo}" var="row">
                <tr>
                    <td><c:out value="${row.name}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table><br><br><br>



<br><br><br>
<a href = "Logout.jsp">Logout</a>
</div>
</body>
</html>