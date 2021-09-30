<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon"
	href="/app-assets/img/dash/icons/icon-48x48.png" />

<link rel="canonical"
	href="https://demo-basic.adminkit.io/ui-forms.html" />

<title>Hospital Management System</title>

<link href="/app-assets/css/dash/app.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
	rel="stylesheet">
</head>




<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row vh-100">
			<div class="col-sm-10 col-md-8 col-lg-9 mx-auto d-table h-100">
				<div class="d-table-cell align-middle"
					style="background-color: #8FBC8F;">

					<div class="text-center">
						&nbsp;
						<h1 class="h2">
							<u><b> Apply for COVID-19 Test</b></u>
						</h1>
						<p class="lead">Please fill the following fields to apply for
							covid-19 test.</p>
					</div>

					<div class="card">
						<div class="card-body" style="background-color: #F0F8FF;">
							<div class="m-sm-4">

								<form method="POST" action="/submit">

									<div class="mb-3">
										<label class="form-label">Name </label> <input
											class="form-control form-control-lg" type="text" name="name"
											placeholder="Enter Your Name" />
									</div>


									<div class="mb-3">
										<label class="form-label"> Age</label> <input
											class="form-control form-control-lg" type="text" name="age"
											placeholder="Enter Your Age" />
									</div>

									<div class="mb-3">
										<label class="form-label">Gender </label> <select
											class="form-control form-control-lg" name="gender">
											<option selected disabled>Select one Option</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
										</select>
									</div>


									<div class="mb-3">
										<label class="form-label">Address</label> <input
											class="form-control form-control-lg" type="text"
											name="address" placeholder="Enter Your Address" />
									</div>

									<div class="mb-3">
										<label class="form-label">NID Number</label> <input
											class="form-control form-control-lg" type="text" name="nid"
											placeholder="Enter Your NID Number" />
									</div>

									<div class="mb-3">
										<label class="form-check"> <input
											class="form-check-input" type="checkbox" value="tour planing"
											id="checkId" onclick="myFunction()"> <span
											class="form-check-label">Are You Planning for a
												International tour?</span>
										</label>
									</div>

									<div class="mb-3" id="passDiv">
										<label class="form-label">Passport Number</label> <input
											class="form-control form-control-lg" type="text"
											name="passport" placeholder="Enter Your Passport Number" />
									</div>
<h2 style="color: red">Please, make a payment for 2500 TK.</h2>
									<div class="row">
										<div class="col-md-5">
											<label class="form-label"><h3>Payment Method:</h3> </label> <select
												class="form-control" name="method" onchange="myFunction2()">
												<option value="Cash">Cash</option>
												<option value="BKash">BKash</option>
												<option value="VISA">VISA</option>
												<option value="PayPal">PayPal</option>
												<option value="MasterCard">MasterCard</option>
												<option value="AmericanExpress">AmericanExpress</option>
											</select>
										</div>

										<div class="col-md-2"></div>

										<div class="col-md-5" id="transactionField">
											<label class="form-label"><h3 class="heading">Transaction
													ID:</h3> </label> <input class="form-control" type="text"
												name="transactionID"></input>
										</div>
									</div>

									<img src="/app-assets/table/dist/img/credit/visa.png"
										alt="Visa"> <img
										src="/app-assets/table/dist/img/credit/mastercard.png"
										alt="Mastercard"> <img
										src="/app-assets/table/dist/img/credit/american-express.png"
										alt="American Express"> <img
										src="/app-assets/table/dist/img/credit/paypal2.png"
										alt="Paypal">


									<div class="text-center mt-3">
										<button type="submit" class="btn btn-lg btn-primary">Apply</button>
										<!-- <input type="submit" value="Apply"> -->
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


<script type="text/javascript">
	//hide
	document.getElementById("passDiv").style.display = 'none';

	//show
	function myFunction() {
		var checkBox = document.getElementById("checkId");
		if (checkBox.checked == true) {
			document.getElementById("passDiv").style.display = '';
		} else {
			document.getElementById("passDiv").style.display = 'none';
		}
	}
</script>

<script type="text/javascript">
	//hide
	document.getElementById("transactionField").style.display = 'none';

	//show
	function myFunction2() {

		document.getElementById("transactionField").style.display = '';
		/* 	var  checkBox = document.getElementById("checkId");
		 if (checkBox.checked == true) {
		 document.getElementById("passDiv").style.display = '';
		 }else{
		 document.getElementById("passDiv").style.display = 'none'; 
		 } */
	}
</script>

<script src="/app-assets/js/dash/app.js"></script>

</body>

</html>