<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>

<%@ page import ="java.sql.*" %>

<%
    if (session.getAttribute("user") == null) {
%>
    	You are currently logged out.
    	<br>
    	<a href="Login.jsp">Login here</a>
<%
    } else {
%>
        Welcome to the website!
        <br>
        <a href='Logout.jsp'>Log Out</a>
<%
    }
%>
</body>
</html>
