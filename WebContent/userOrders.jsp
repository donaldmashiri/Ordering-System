<%@ include file="userNav.jsp"%>

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



<!-- CREATE SECTION -->
<section id="create-section" class="py-1 bg-secondary text-white">
	<div class="container">
		<div class="row mt-2">
			<div class="col-md-4 order-1">
				<img src="food.png" width="100" alt=""
					class="img-fluid mb-3 rounded-circle">
			</div>
			<div class="col-md-6 order-2">
				<div class="row mt-3">
					<div class="col-md-3">
						<a href="vegetables.jsp" class="btn btn-dark btn-block"><img
							src="vegetables1.jpg" width="50" height="50" alt=""
							class="rounded-circle"> Vegetables</a>

					</div>
					<div class="col-md-3">
						<a href="fruits.jsp" class="btn btn-dark btn-block"><img
							src="fruits.jpg" width="50" height="50" alt=""
							class="rounded-circle"> Fruits</a>
					</div>
					<div class="col-md-3">
						<a href="meats.jsp" class="btn btn-dark btn-block"><img
							src="meat.jpg" width="50" height="50" alt=""
							class="rounded-circle"> Meats</a>
					</div>
					<div class="col-md-3">
						<a href="drinks.jsp" class="btn btn-dark btn-block"><img
							src="drinks.jpg" width="50" height="50" alt=""
							class="rounded-circle"> Drinks</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<!-- EXPLORE HEAD -->
<section id="explore-head-section bg-secondary">
	<div class="container">
		<h4 class="font-weight-bold">User Orders details</h4>
		<div class="row">
			<table class="table table-bordered">
				<thead class="thead-light table-bordered">
					<tr>
						<th scope="col">order#</th>
						<th scope="col">food#</th>
						<th scope="col">category</th>
						<th scope="col">food</th>
						<th scope="col">additional</th>
						<th scope="col">amount</th>
						<th scope="col">status</th>
							<th scope="col">order status</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
							connection = DriverManager.getConnection(connectionUrl, userId, password);
							statement = connection.createStatement();
							String sql = "SELECT * FROM food_order WHERE user_id =" + sess_userID;
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
					%>

					<tr>
						<th scope="row" class="text-center">000<%=resultSet.getString("order_id")%></th>
						<th scope="row" class="text-center">F00<%=resultSet.getString("food_id")%></th>
						<td><%=resultSet.getString("category")%></td>
						<td><%=resultSet.getString("food")%></td>
						<td><%=resultSet.getString("additionals")%></td>
						<td>$<%=resultSet.getString("price")%>.00
						<td>
							<p class="alert alert-info"><%=resultSet.getString("status")%></p>
						</td>
						<td>
							<p class="alert alert-warning"><%=resultSet.getString("order_status")%></p>
						</td>
					</tr>
					<%
					}
							connection.close();
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>

				</tbody>

			</table>
		</div>
	</div>
</section>

<%@ include file="footer.jsp"%>