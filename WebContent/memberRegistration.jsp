<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>

<body>
	<%@ include file="nav.jsp"%>
	<!-- CREATE SECTION -->
	<section id="create-section" class="py-5 bg-secondary text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6 order-2">
					<img src="food.png" alt="" class="img-fluid mb-3 rounded-circle">
				</div>
				<div class="col-md-6 order-1">
					<h3>Restaurant Ordering System</h3>
					<p>Feed more of your hungry customers by tonight with our
						restaurant online ordering system software.</p>
					<div class="d-flex">
						<div class="p-4 align-self-start">
							<i class="fas fa-check fa-2x"></i>
						</div>
						<div class="p-4 align-self-end">
							<form action="Register" method="post">
								<div class="form-group">
									<input type="text" name="uname" class="form-control"
										Placeholder="User Name" minlength="4" required>
								</div>
								<div class="form-group">
									<input type="email" name="email" class="form-control"
										Placeholder="Email" required>
								</div>
								<div class="form-group">
									<input type="password" name="password" class="form-control"
										Placeholder="Password" minlength="4" required>
								</div>
								<div class="form-group">
									<input type="number" name="phone" class="form-control"
										Placeholder="Phone"  min="0111111" max="0999999999" required>
								</div>
								<div class="form-group">
									<button class="btn btn-dark ">Register</button>
								</div>
								<div class="p-4 align-self-end">
									Already have an account click here to <a href="login.jsp"
										class="text-warning">login.</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<footer id="main-footer" class="bg-dark text-white">
		<div class="container">
			<div class="row">
				<div class="col text-center py-4">
					<h3>Ordering System</h3>
					<p>
						Copyright &copy; <span id="year"></span>
					</p>
				</div>
			</div>
		</div>
	</footer>



<%@ include file="footer.jsp"%>