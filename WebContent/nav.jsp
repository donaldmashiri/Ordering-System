<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
<div class="container">
	<a href="index.html" class="navbar-brand">Ordering System</a>
	<button class="navbar-toggler" data-toggle="collapse"
		data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a href="memberRegistration.jsp"
				class="nav-link">Register</a></li>
			<li class="nav-item "><a href="login.jsp" class="nav-link">Login</a>
			</li>
			<li class="nav-item active ml-3"><a href="login.jsp"
				class="nav-link btn btn-secondary btn-block" data-toggle="modal"
				data-target="#exampleModal">admin</a></li>
		</ul>
	</div>
</div>
</nav>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Admin Login</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form class="form-inline" action="adminPin" method="post">
					<label>Enter Pin:</label> <input type="number" name="pin"
						class="form-control" placeholder="Enter pin">
					<button type="submit" class="btn btn-dark">Enter</button>
				</form>
			</div>
		</div>
	</div>
</div>

