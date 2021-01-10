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
		<h4 class="font-weight-bold">Ordering details</h4>
		<div class="row">
			<table class="table table-bordered">
				<thead class="thead-light table-bordered">
					<tr>
						<th scope="col">order#</th>
						<th scope="col">category</th>
						<th scope="col">food</th>
						<th scope="col">additional</th>
						<th scope="col">amount</th>
						<th scope="col">status</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
							connection = DriverManager.getConnection(connectionUrl, userId, password);
							statement = connection.createStatement();
							String sql = "SELECT * FROM fooddetails WHERE food_id =" + id;
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
					%>

					<tr>
						<th scope="row" class="text-center">000<%=resultSet.getString("food_id")%></th>
						<td><%=resultSet.getString("category")%></td>
						<td><%=resultSet.getString("food")%></td>
						<td><%=resultSet.getString("additionals")%></td>
						<td>$<%=resultSet.getString("price")%>.00
						<td>
							<p class="alert alert-info"><%=resultSet.getString("status")%></p>
						</td>

						<td>
							<form action="updateOrder.jsp" method="post">
								<div class="form-group">
									<input type="hidden" name="id" class="form-control"
										value="<%=resultSet.getString("food_id")%>">
								</div>
								<button type="submit" class="btn btn-primary btn-sm btn-block">Pay</button>
							</form>
						</td>
						<td>
							<form action="insertOrder" method="post">
								<div class="form-group">
									<input type="hidden" name="food_id" value="<%=resultSet.getString("food_id")%>">
									<input type="hidden" name="user_id" value="<%=sess_userID%>">
									<input type="hidden" name="category" value="<%=resultSet.getString("category")%>">
									<input type="hidden" name="food" value="<%=resultSet.getString("food")%>">
									<input type="hidden" name="price" value="<%=resultSet.getString("price")%>">
									<input type="hidden" name="status" value="<%=resultSet.getString("status")%>">
									<input type="hidden" name="additionals" value="<%=resultSet.getString("additionals")%>">
								</div>
								<button type="submit" class="btn btn-warning btn-sm btn-block">Order</button>
							</form>
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