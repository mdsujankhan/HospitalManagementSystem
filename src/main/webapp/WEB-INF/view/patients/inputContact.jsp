<jsp:include page="/WEB-INF/view/common/patient/header.jsp" />

<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row">
			<div class="col-sm-10 col-md-7 col-lg-7 mx-auto d-table h-100">
				<div class="d-table-cell align-middle"
					style="background-color: #2E8B57;'">

					<div class="text-center">
						&nbsp;
						<h1 class="h2">
							<u>Prescription</u>
							&nbsp;
						</h1>

					</div>

					<div class="card">
						<div class="card-body">
							<div class="m-sm-4">

								<form action="/patient/getPrescription" method="POST">
									<div class="mb-3">
										<label class="form-label" for="name"><h4><b>Your Contact Number:</b></h4></label> <input
											class="form-control form-control-lg" type="text" name="contact"
											placeholder="Enter Your Contact Number" />
									</div>
									
									<div class="mb-3 form-check">
										<input class="form-check-input" type="checkbox" value="nid"
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault">
											Remind me later. </label>
									</div>

									<div class="text-center mt-3">
										<button type="submit" class="btn btn-lg btn-primary">Get Prescription
											</button>
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