<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="adminHeader.jsp"%>

<!-- EXPLORE HEAD -->
<section id="explore-head-section bg-secondary">
	<div class="container">
		<div class="row">
			<div class="col-md-6 card mt-3">
				<div class="card-header">Add Food</div>
				<div class="card-body">
					<form action="adminAdd" method="post">
						<div class="form-group">
							<select name="category" class="form-control" >
								<option>Select food category</option>
								<option value="fruits">Fruits</option>
								<option value="vegetables">Vegetables</option>
								<option value="drinks">Drinks</option>
								<option value="meats">Meats</option>
							</select>
						</div>
						<div class="form-group">
							<input type="text" name="food" class="form-control"
								Placeholder="Name of Food" minlength="4" required>
						</div>
						<div class="form-group">
							<input type="number" name="price" min="1" class="form-control"
								Placeholder="Price">
						</div>
						<div class="form-group">
							<textarea name="additionals" class="form-control"
								Placeholder="Add additionals or extra offers" minlength="4" rows="3" cols="1"></textarea>
						</div>
						<div class="form-group">
							<button class="btn btn-dark ">Add</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
</section>


<%@ include file="footer.jsp"%>