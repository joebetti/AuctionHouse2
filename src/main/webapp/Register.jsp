<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Register Page</title>
	</head>
	
	<body>

		Login
		
		<br>
	
		<form action="RegisterUser.jsp" method="post">
			<table>
				<tr>    
					<td>Enter Username:</td><td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Enter Password:</td><td><input type="password" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="Submit">
		</form>
		<br>
		
		Not Registered? <a href="register.jsp">Create Account</a>

</body>
</html>
