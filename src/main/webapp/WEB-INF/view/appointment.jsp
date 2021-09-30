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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
#title {
	color: maroon;
}
</style>
</head>




<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row vh-100">
			<div class="col-sm-10 col-md-8 col-lg-8 mx-auto d-table h-100">
				<div class="d-table-cell align-middle" style="background-color: #8FBC8F;">

					<div class="text-center">
					&nbsp;
						<h1 class="h2" id="title">
							<u><b> Book An Appointment</b></u>
						</h1>
						<p class="lead">Please fill the following fields to book an
							Appointment</p>
					</div>

					<div class="card">
						<div class="card-body" style="background-color: 	#F0F8FF;">
							<div class="m-sm-4">

								<form method="POST" action="/makeAppoinment">
									<div class="mb-3">
										<label class="form-label">Select Department </label>
										
										 <select class="form-control form-control-lg" name="department">
											<c:forEach items="${departments}" var="d">
												<option value="${d.name}">${d.name}</option>
											</c:forEach>
										</select>

									</div>

									<div class="mb-3">
										<label class="form-label">Select Doctor </label> <select
											class="form-control form-control-lg" name="doctor">
											<option selected disabled>Select one Option</option>
											<option value="Dr.Mahfujur Rahman">Dr.Mahfujur
												Rahman</option>
											<option value="Dr. Alamgir Hossain">Dr. Alamgir
												Hossain</option>
											<option value="Dr.Imran Hossain">Dr.Imran Hossain</option>
											<option value="Dr.Tabid Awal">Dr.Tabid Awal</option>
											<option value="Dr.Rashid Karim">Dr.Rashid Karim</option>
										</select>
									</div>

									<div class="mb-3">
										<label class="form-label">Name </label> <input
											class="form-control form-control-lg" type="text" name="name"
											placeholder="Enter Your Name" />
									</div>

									<div class="mb-3">
										<div class="row">
											<div class="col-md-5">
												<label class="form-label"> Age</label> <input
													class="form-control form-control-lg" type="text" name="age"
													placeholder="Enter Your Age" />
											</div>
											<div class="col-md-2"></div>
											<div class="col-md-5">
												<label class="form-label">Gender </label> <select
													class="form-control form-control-lg" name="gender">
													<option selected disabled>Select one Option</option>
													<option value="Male">Male</option>
													<option value="Female">Female</option>
												</select>
											</div>
										</div>
									</div>

									<div class="mb-3">
										<div class="row">
											<div class="col-md-5">
												<label class="form-label"> Contact No</label> <input
													class="form-control form-control-lg" type="text"
													name="contact" placeholder="Enter Your Contact Number" />
											</div>
											<div class="col-md-2"></div>
											<div class="col-md-5">
												<label class="form-label">Time Slot </label> <select
													class="form-control form-control-lg" name="slot">
													<option selected disabled>Select Time Slot </option>
													<option value="Morning Slot">Morning Slot</option>
													<option value="Evening Slot">Evening Slot</option>
												</select>
											</div>
										</div>
									</div>


									<div class="mb-3">
										<label class="form-label">Email</label> <input
											class="form-control form-control-lg" type="email"
											name="email" placeholder="Enter Your Email" />
									</div>


									<div class="mb-3">
										<label class="form-check"> <input
											class="form-check-input" type="checkbox" value="tour planing"
											id="checkId" onclick="myFunction()"> <span
											class="form-check-label">Above all information are
												valid.</span>
										</label>
									</div>


									<div class="text-center mt-3">
										<button type="submit" class="btn btn-lg btn-primary"
											id="btnID">Book Appointment</button>
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
	document.getElementById("btnID").style.display = 'none';

	//show
	function myFunction() {
		var checkBox = document.getElementById("checkId");
		if (checkBox.checked == true) {
			document.getElementById("btnID").style.display = '';
		} else {
			document.getElementById("btnID").style.display = 'none';
		}
	}
</script>

<script src="/app-assets/js/dash/app.js"></script>

</body>

</html>