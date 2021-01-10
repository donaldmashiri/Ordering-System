<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="adminHeader.jsp"%>


<!-- CREATE SECTION -->
<section id="create-section" class="py-1 bg-light text-dark">
	<div class="container font-weight-bold">
		<h5>Food Details</h5>
	</div>
</section>



<!-- EXPLORE HEAD -->
<section id="explore-head-section bg-secondary">
	<div class="container">
		<div class="row">
			<%@ include file="con.jsp"%>
			<table class="table table-bordered mt-3">
				<tr>

				</tr>
				<tr bgcolor="#A52A2A">
					<td><b>#</b></td>
					<td><b>Category</b></td>
					<td><b>Food</b></td>
					<td><b>Price</b></td>
					<td><b>Additional</b></td>
					<td><b></b></td>

				</tr>
				<%
				try {
						connection = DriverManager.getConnection(connectionUrl, userId, password);
						statement = connection.createStatement();
						String sql = "SELECT * FROM fooddetails ORDER BY food_id DESC";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#DEB887">
					<td><%=resultSet.getString("food_id")%></td>
					<td><%=resultSet.getString("category")%></td>
					<td><%=resultSet.getString("food")%></td>
					<td><%=resultSet.getString("price")%></td>
					<td><%=resultSet.getString("additionals")%></td>
					<td><a
						href="delete.jsp?id=<%=resultSet.getString("food_id")%>"><button
								class="btn btn-danger" type="button" class="delete">Delete</button></a>
								<a
						href="editAdmin.jsp?id=<%=resultSet.getString("food_id")%>"><button
								class="btn btn-info" type="button">Edit</button></a></td>
				</tr>

				<%
				}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

		</div>
	</div>
</section>


<%@ include file="footer.jsp"%>
