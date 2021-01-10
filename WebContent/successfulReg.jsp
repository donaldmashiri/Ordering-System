<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful Registration</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>

<%@ include file="nav.jsp"%>

	<!-- CREATE SECTION -->
	<section id="create-section" class="py-1 bg-secondary text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-4 order-1">
					<img src="food.png" width="100" alt="" class="img-fluid mb-3 rounded-circle">
				</div>
				<div class="col-md-6 order-2">
					<h3>Restaurant Ordering System</h3>
					<p>Feed more of your hungry customers by tonight with our
						restaurant online ordering system software.</p>
				</div>
			</div>
		</div>
	</section>
	
	<div class="container text-center">
			<div class="row text-center">
				<h5 class="alert alert-success m-3">Account was successfully created Please click here to login
				<a href="login.jsp" class="text-danger font-weight-bold">login</a>
				</h5>
			</div>
		</div>
	

<%@ include file="footer.jsp"%>