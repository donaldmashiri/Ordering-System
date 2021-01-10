<%@ include file="userNav.jsp"%>

	<!-- CREATE SECTION -->
	<section id="create-section" class="py-1 bg-secondary text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-4 order-1">
					<img src="fruits.jpg" width="100" alt=""
						class="img-fluid mb-3 rounded-circle">
					<h3>Fruits</h3>
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

	<%@ include file="con.jsp"%>


	<section id="create-section" class="py-1 bg-light text-dark">
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="welcome.jsp">welcome</a></li>
					<li class="breadcrumb-item active" aria-current="page">fruits</li>
				</ol>
			</nav>
			<div class="row mt-3">
				<%
				try {
						connection = DriverManager.getConnection(connectionUrl, userId, password);
						statement = connection.createStatement();
						String sql = "SELECT * FROM fooddetails WHERE category = 'fruits'";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<div class="col-md-4 mb-3">
					<ul class="list-group">
						<li class="list-group-item"><img src="fruits.jpg"
							width="50" height="50" alt="" class="rounded-circle"><strong> <%=resultSet.getString("food")%> </strong> -
							<small>(<%=resultSet.getString("additionals")%>)</small> <strong>$<%=resultSet.getString("price")%></strong>
								 <a
							href="payOrder.jsp?id=<%=resultSet.getString("food_id")%>"><button
									class="btn btn-primary btn-sm float-right" type="button">Order</button></a>
						</li>
					</ul>
				</div>


				<%
				}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

			</div>
		</div>
	</section>





	<%@ include file="footer.jsp"%>