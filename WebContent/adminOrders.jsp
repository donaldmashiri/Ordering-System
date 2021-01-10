<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="adminHeader.jsp"%>


<!-- CREATE SECTION -->
<section id="create-section" class="py-1 bg-light text-dark">
	<div class="container font-weight-bold">
		<h5>Food Orders</h5>
	</div>
</section>



<!-- EXPLORE HEAD -->
<section id="explore-head-section bg-secondary">
	<div class="container">
		<div class="row">
			<%@ include file="con.jsp"%>
			<table class="table">
				<thead class="thead-dark">
					<tr>
					
						<th scope="col">order#</th>
						<th scope="col">food#</th>
						<th scope="col">category</th>
						<th scope="col">food</th>
						<th scope="col">additional</th>
						<th scope="col">amount</th>
						<th scope="col">User#</th>
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
							String sql = "SELECT * FROM food_order ORDER BY order_id DESC";

							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
					%>
					<tr>
						<th scope="row" class="text-center">OD00<%=resultSet.getString("order_id")%></th>
						<th scope="row" class="text-center">F00<%=resultSet.getString("food_id")%></th>
						<td><%=resultSet.getString("category")%></td>
						<td><%=resultSet.getString("food")%></td>
						<td><%=resultSet.getString("additionals")%></td>
						<td>$<%=resultSet.getString("price")%>.00</td>
						<th scope="row" class="text-center">user00<%=resultSet.getString("user_id")%></th>
						<td>
							<p class="alert alert-info"><%=resultSet.getString("status")%></p>
						</td>
						<td>
							<p class="alert alert-warning"><%=resultSet.getString("order_status")%></p>
						</td>
						<td></td>
					</tr>

					<%
					}

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
