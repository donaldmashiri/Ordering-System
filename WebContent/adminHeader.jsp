<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>

<style>
</style>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a href="#" class="navbar-brand">Ordering System</a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <img src="user.png" width="28"
							height="28" alt="" class="rounded-circle"> ADMINSTRATION
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Orders</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="login.jsp">Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- CREATE SECTION -->
	<section id="create-section" class="py-0 bg-secondary text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-4 order-1">
					<img src="food.png" width="100" alt=""
						class="img-fluid mb-3 rounded-circle">
				</div>
				<div class="col-md-6 order-2">
					<div class="row mt-3">
						<div class="col-md-3">
							<a href="admin.jsp" class="btn btn-dark btn-block">Users</a>
						</div>
						<div class="col-md-3">
							<a href="adminAdd.jsp" class="btn btn-success btn-block">Add</a>
						</div>
						<div class="col-md-3">
							<a href="adminOrders.jsp" class="btn btn-danger btn-block">Food orders</a>
						</div>
						<div class="col-md-3">
							<a href="adminDelete.jsp" class="btn btn-warning btn-block">Modify/Delete</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>