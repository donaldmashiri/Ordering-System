<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp"%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/userdb";
	String userId = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
try {
		connection = DriverManager.getConnection(connectionUrl, userId, password);
		statement = connection.createStatement();
		String sql = "SELECT * FROM fooddetails WHERE food_id =" + id;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!-- EXPLORE HEAD -->
<section id="explore-head-section bg-secondary">
	<div class="container">
		<div class="row">
			<div class="col-md-6 card mt-3">
				<div class="card-header">Update Food details</div>
				<div class="card-body">
					<form method="post" action="update-process.jsp">
					
					<div class="form-group">
							<input type="hidden" name="id" class="form-control"
								value="<%=resultSet.getString("food_id")%>">
						</div>

						<div class="form-group">
							<select name="category" class="form-control">
								<option value="<%=resultSet.getString("category")%>"><%=resultSet.getString("category")%></option>
								<option value="fruits">Fruits</option>
								<option value="vegetables">Vegetables</option>
								<option value="drinks">Drinks</option>
								<option value="meats">Meats</option>
							</select>
						</div>
						<div class="form-group">
							<input type="text" name="food" class="form-control"
								value="<%=resultSet.getString("food")%>">
						</div>
						<div class="form-group">
							<input type="number" name="price" class="form-control"
								value="<%=resultSet.getString("price")%>">
						</div>
						<div class="form-group">
							<select name="image" class="form-control">
								<option value="<%=resultSet.getString("image")%>">select image</option>
								<option value="fruits.png">Fruits</option>
								<option value="vegs.png">Vegetables</option>
								<option value="drinks.png">Drinks</option>
								<option value="meat.png">Meats</option>
							</select>
						</div>
						<div class="form-group">
							<button class="btn btn-warning ">Update</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
</section>
<%
}
		connection.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>





<%@ include file="footer.jsp"%>