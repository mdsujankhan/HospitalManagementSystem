<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />

<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row">
			<div class="col-sm-10 col-md-8 col-lg-8 mx-auto d-table h-100">
				<div class="d-table-cell align-middle" style="background-color: 	#2E8B57;'">

					<div class="text-center">
					&nbsp;
						<h1 class="h2"><u>Add a Role</u></h1>
						<p class="lead">Users can Login With this Role.</p>
					</div>

					<div class="card">
						<div class="card-body">
							<div class="m-sm-4">

								<form  action="/role/save" method="POST">
									<div class="mb-3">
										<label class="form-label" for="code">Role Code</label> <input
											class="form-control form-control-lg" type="text" name="code"
											placeholder="Enter Role Code" />
									</div>

									<div class="mb-3">
										<label class="form-label" for="name">Role Name</label> 
										<input class="form-control form-control-lg" type="text" name="name"
											placeholder="Enter your Role name" />
									</div>

									<div class="mb-3">
										<label class="form-label" for="description">Role Description</label>
										<input class="form-control form-control-lg" type="text" name="description" 
											placeholder="Enter a Description" />
									</div>

									<div class="text-center mt-3">
										<button type="submit" class="btn btn-lg btn-primary">Add Role</button>
									</div>
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</main>



<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />