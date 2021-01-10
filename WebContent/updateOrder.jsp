<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.sql.*"%>
	<%!String driverName = "com.mysql.jdbc.Driver";%>
	<%!String url = "jdbc:mysql://localhost:3306/userdb";%>
	<%!String user = "root";%>
	<%!String psw = "";%>
	<%
	String id = request.getParameter("id");
		
		if (id != null) {
			Connection con = null;
			PreparedStatement ps = null;
			int personID = Integer.parseInt(id);
			try {
				Class.forName(driverName);
				con = DriverManager.getConnection(url, user, psw);
				String sql = "UPDATE fooddetails SET status='paid' WHERE food_id="
						+ id;
				ps = con.prepareStatement(sql);
				
				
				int i = ps.executeUpdate();
				if (i > 0) {
					response.sendRedirect("payOrder.jsp?id="+id);
				} else {
					out.print("There is a problem in updating Record.");
				}
			} catch (SQLException sql) {
				request.setAttribute("error", sql);
				out.println(sql);
			}
		}
	%>

</body>
</html>