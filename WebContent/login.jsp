<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
				<div class="col-md-6 order-1">
					<img src="food.png" alt="" class="img-fluid mb-3 rounded-circle">
				</div>
				<div class="col-md-6 order-2">
					<h3>Restaurant Ordering System</h3>
					<p>Feed more of your hungry customers by tonight with our restaurant online ordering system software.</p>
					<div class="d-flex">
						<div class="p-4 align-self-start">
							<i class="fas fa-check fa-2x"></i>
						</div>
						<div class="p-4 align-self-end">
							<form action="loginCheck" method="post">
								<div class="form-group">
									<input type="email" name="eemail" class="form-control"
										Placeholder="Email" required>
								</div>
								<div class="form-group">
									<input type="password" name="epassword" class="form-control"
										Placeholder="Password" minlength="4" required>
								</div>
								<div class="form-group">
									<button class="btn btn-dark" type="submit">Login</button>
								</div>
								<div class="p-4 align-self-end">
									Dont have an account sign up here <a href="memberRegistration.jsp"
										class="text-warning">Sign up.</a>
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
          <p>Copyright &copy;
            <span id="year"></span>
          </p>
        </div>
      </div>
    </div>
  </footer>

<%@ include file="footer.jsp"%>