<jsp:include page="/WEB-INF/view/common/pathologist/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row">
			<div class="col-sm-8 col-md-10 col-lg-12 mx-auto d-table h-200">
				<div class="d-table-cell align-middle">

					<div class="card" style="background-color: #ADD8E6;">
						<img src="/app-assets/img/govtLogo.png" alt="govtLogo"
							class="center">
						<h2 style="text-align: center;">The Government of The
							People's Republic Of Bangladesh</h2>
						<h4 style="text-align: center;">Directorate General of Health
							Service</h4>
						<h4 style="text-align: center;">Ministry of Health and Family
							Welfare</h4>
						<div class="card-body" style="background-color: #DCDCDC;">
							<div class="m-sm-4">
								<form action="/pathologist/#" method="POST">
									<div>
										<h1 style="text-align: center;">
											<u><b>Laboratory Report for Covid-19 Test</b></u>
										</h1>
										<input type="hidden" value="${r.id}" name="id"> &nbsp;
										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Full Name:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.name}<h4></h4></label>
											</div>

											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Age:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.age}<h4></h4></label>
											</div>

										</div>

										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Gender:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.gender}<h4></h4></label>
											</div>


											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>NID No:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.nidNo}<h4></h4></label>
											</div>
										</div>

										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Apply Date:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.applyDate}<h4></h4></label>
											</div>


											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Address:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.address}<h4></h4></label>
											</div>
										</div>


										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Lab Name:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>icddr'b
														Diagnostic Laboratories</h4></label>
											</div>


											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Test Status:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.testStatus}<h4></h4></label>
											</div>
										</div>


										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Passport:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.passportNo}<h4></h4></label>
											</div>


											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Swab Taken Date:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>${r.swabTakenDate}<h4></h4></label>
											</div>
										</div>

										<hr>
										<h2 style="text-align: center;">Result</h2>

										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Result:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4
														style="color: green">${r.result}<h4></h4></label>
											</div>


											<div class="col-md-1"></div>
											<div class="col-md-2">
												<label><h4>Comments:</h4></label>
											</div>
											<div class="col-md-3">
												<label class="form-label" for="description"><h4>Please
														Correlate Clinically</h4></label>
											</div>
										</div>
									</div>
									&nbsp;
									<div class="text-center mt-3">
										<a class="btn btn-lg btn-primary" onclick="window.print()">Print
											Prescription</a>
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

<jsp:include page="/WEB-INF/view/common/pathologist/footer.jsp" />

<script>
	function printDiv() {

		var divToPrint = document.getElementById('print');

		var newWin = window.open('', 'Print-Window');

		newWin.document.open();

		newWin.document.write('<html><body onload="window.print()">'
				+ divToPrint.innerHTML + '</body></html>');
		newWin.document.close();

		setTimeout(function() {
			newWin.close();
		}, 10);

	}
</script>