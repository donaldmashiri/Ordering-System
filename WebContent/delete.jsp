<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "");
		Statement st = conn.createStatement();
		int i = st.executeUpdate("DELETE FROM fooddetails WHERE food_id=" + id);
		response.sendRedirect("adminDelete.jsp");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>

</body>
</html>