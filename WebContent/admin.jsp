<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="adminHeader.jsp"%>



<!-- EXPLORE HEAD -->
<section id="explore-head-section bg-secondary">
	<div class="container">
		<div class="row">
			<%@ include file="con.jsp"%>

			<table class="table mt-3">
				<tr>

				</tr>
				<tr bgcolor="#A52A2A">
					<td><b>#</b></td>
					<td><b>username</b></td>
					<td><b>Email</b></td>
					<td><b>Phone</b></td>
				</tr>
				<%
				try {
						connection = DriverManager.getConnection(connectionUrl, userId, password);
						statement = connection.createStatement();
						String sql = "SELECT * FROM member";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#DEB887">
					<td><%=resultSet.getString("user_id")%></td>
					<td><%=resultSet.getString("uname")%></td>
					<td><%=resultSet.getString("email")%></td>
					<td><%=resultSet.getString("phone")%></td>


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
