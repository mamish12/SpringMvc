<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>This is help page</title>
</head>
<body>

	<%
	String name = (String)request.getAttribute("name");
	Integer roll = (Integer)request.getAttribute("roll");
	LocalDateTime time=(LocalDateTime)request.getAttribute("time");
	%>
	<h1>This is help Page</h1>
	<h1>Hello My Name is:<%=name %></h1>
	<h1>My Roll No is:<%=roll %></h1>
	<h1>Date And Time is:<%=time %></h1>
</body>
</html>