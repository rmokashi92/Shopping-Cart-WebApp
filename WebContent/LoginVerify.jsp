<%@page import="com.demo.model.Login"%>
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
<title>Insert title here</title>
</head>

<jsp:useBean id="temp" class = "com.data.HibernateConnect" scope = "session"></jsp:useBean>
<body>

<% boolean flag = false;
	Login service = new Login(request.getParameter("uname"),request.getParameter("pwd"));

	//service.setUname(request.getParameter("uname"));
	flag = temp.validate(service);
	
	if(flag)
	{
		 response.addHeader("uname", request.getParameter("uname"));
		    RequestDispatcher view = request.getRequestDispatcher("LoginServlet");
		    view.forward(request, response);
	}
	else
	{
		response.sendRedirect("loginpage.jsp");
	}

%>

</body>
</html>