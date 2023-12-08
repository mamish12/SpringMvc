<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>index page</h1>
	<h2>This is home page.</h2>
	<%
	String name = (String) request.getAttribute("name");
	int id = (Integer) request.getAttribute("id");
	List<String> fr1 = (List<String>) request.getAttribute("fr");
	%>
	<h1>
		Name is
		<%=name%></h1>

	<h1>
		Id is:
		<%=id%>
	</h1>

		<%
		for (String s : fr1) {
		%>
		<h1><%=s %></h1>
		<%
		}
		%>

</body>
</html>