<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>




<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row vh-100">
			<div class="col-sm-10 col-md-8 col-lg-7 mx-auto d-table h-100">
				<div class="d-table-cell align-middle">

					<div class="text-center mt-4">
						<h1 class="h2">Welcome Back! How Are You, Today?</h1>
						<p class="lead">Please Login to receive your Prescription and
							Others</p>
					</div>

					<div class="card" id="div_1">
						<div class="card-body" style="background-color: #008B8B;">
							<div class="m-sm-4">
								<div class="text-center">
									<img src="/app-assets/img/dash/avatars/avatar.jpg"
										alt="Charles Hall" class="img-fluid rounded-circle"
										width="132" height="132" />
								</div>

								<form method="POST" action="/patient/varify">


									<div class="mb-3">
										<label class="form-label"><h4>Your Mobile Number:</h4></label>
										<input class="form-control form-control-lg" type="text"
											name="username" placeholder="Enter your Mobile Number" />
									</div>

									<div class="mb-3">
										<!-- 										<label class="form-label">Password</label> <input
											class="form-control form-control-lg" type="password"
											name="password" placeholder="Enter your password" /> -->
									</div>


									<h3 style="text-align: center;">You have to verify first.</h3>
									<div class="text-center mt-3">
										<button id="verify" type="submit" onclick="myFunction2()"
											class="btn btn-lg btn-dark">Verify User</button>
									</div>

								</form>
							</div>
						</div>
					</div>




					<div class="card" id="div_2">
						<div class="card-body" style="background-color: #008B8B;">
							<div class="m-sm-4">
								<div class="text-center">
									<img src="/app-assets/img/dash/avatars/avatar.jpg"
										alt="Charles Hall" class="img-fluid rounded-circle"
										width="132" height="132" />
								</div>

								<form method="POST" action="/patient/varify">


									<div class="mb-3">
										<label class="form-label"><h4>Your Mobile Number:</h4></label>
										<input class="form-control form-control-lg" type="text"
											name="username" placeholder="Enter your Mobile Number" />
									</div>

									<h3 style="text-align: center;">You have to verify first.</h3>
									<div class="text-center mt-3">
										<button type="submit" onclick="myFunction()"
											class="btn btn-lg btn-dark">Submit</button>
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
</body>
<script src="/app-assets/js/dash/app.js"></script>
<!-- <script>
	function myFunction() {		
		window.alert("Your OTP code : 9182");
		window.location.replace("http://localhost:8080/doctor/home");
		// window.location.href = "http://localhost:8080/doctor/home";
		// window.location.href = "./doctor/home";
		let otp = prompt("Please enter your OTP Code:", "Your OTP Code");

		window.location.replace("https://www.google.com/");

		/*   if (otp != null) {
		 window.location.href = "http://localhost:8080/doctor/home";
		 } else {
		
		 } */
	}
</script> -->

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>

<!-- <script type="text/javascript">
	//hide
	document.getElementById("div_2").style.display = 'none';

	//show
	function myFunction2() {

		//document.getElementById("transactionField").style.display = '';
		
		var clicked = document.getElementById("verify");
		if (clicked.clicked == true) {
			document.getElementById("div_2").style.display = '';
			document.getElementById("div_1").style.display = 'none';
		} else {
			document.getElementById("div_2").style.display = 'none';
		}
	}
</script> -->

<!-- <script type='text/javascript'>
    $(document).ready(function(){
        $("#div_2").hide();
    });
</script> -->


<script>
	$("#div_2").hide();
	$("#verify").on("click", function() {
		if (data == "true") {
			$("#div_1").hide();
			$("#div_2").show();
		} else {
			//$("#err").text("NID/DOB doesn't match!");
		}
	})
</script>


</html>