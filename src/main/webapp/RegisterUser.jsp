<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>

<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("username"); 
    String userpw = request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root", "root");
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userid + "'");
    
    if (rs.next()) {
    	out.println("Username is already in use, please <ahref='Register.jsp'>try again</a>");
    } else {
    	session.setAttribute("user", userid); // the username will be stored in the session
    	st.executeUpdate("insert into users values('" + userid + "', '" + userpw + "') ");
    	response.sendRedirect("success.jsp");
    }
%>
</body>
</html>
