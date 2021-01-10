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
		String category = request.getParameter("category");
		String food = request.getParameter("food");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		if (id != null) {
			Connection con = null;
			PreparedStatement ps = null;
			int personID = Integer.parseInt(id);
			try {
				Class.forName(driverName);
				con = DriverManager.getConnection(url, user, psw);
				String sql = "UPDATE fooddetails SET category=?,food=?,price=?,image=?, food_id=? WHERE food_id="
						+ id;
				ps = con.prepareStatement(sql);
				
				ps.setString(1, category);
				ps.setString(2, food);
				ps.setString(3, price);
				ps.setString(4, image);
				ps.setString(5, id);
				int i = ps.executeUpdate();
				if (i > 0) {
					response.sendRedirect("adminDelete.jsp");
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