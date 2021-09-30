<jsp:include page="/WEB-INF/view/common/patient/header.jsp" />

<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row">
			<div class="col-sm-10 col-md-7 col-lg-8 mx-auto d-table h-100">
				<div class="d-table-cell align-middle"
					style="background-color: #2E8B57;'">

					<div class="text-center">
						&nbsp;
						<h1 class="h2">
							<u>Generate Report</u> &nbsp;
						</h1>

					</div>

					<div class="card">
						<div class="card-body">
							<div class="m-sm-4">

								<form action="/pathologist/createReport" method="POST">
									<div class="mb-3">
										<label class="form-label" for="name"><h4>
												<b>Patient Contact Number:</b>
											</h4></label> <input class="form-control form-control-lg" type="text"
											name="contact" placeholder="Enter Patient Contact Number" />
									</div>

									<div class="mb-3">
										<label class="form-label" for="name"><h4>
												<b>Date Of Birth:</b>
											</h4></label> <input class="form-control form-control-lg" type="date"
											name="date_of_birth"/>
									</div>

									<div class="text-center mt-3">
										<input type="submit" class="btn btn-lg btn-primary"
											value="Create Report" />
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



<jsp:include page="/WEB-INF/view/common/patient/footer.jsp" />