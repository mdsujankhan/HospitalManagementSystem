<jsp:include page="/WEB-INF/view/common/doctor/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
body {
	background-color: #F6F6F6;
	margin: 0;
	padding: 0;
}

h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
}

p {
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	margin-right: auto;
	margin-left: auto;
}

.brand-section {
	background-color: #0d1033;
	padding: 10px 40px;
}

.logo {
	width: 50%;
}

.row {
	display: flex;
	flex-wrap: wrap;
}

.col-6 {
	width: 50%;
	flex: 0 0 auto;
}

.text-white {
	color: #fff;
}

.company-details {
	float: right;
	text-align: right;
}

.body-section {
	padding: 50px;
	border: 1px solid gray;
}

.heading {
	font-size: 20px;
	margin-bottom: 08px;
}

.sub-heading {
	color: #262626;
	margin-bottom: 05px;
}

table {
	background-color: #fff;
	width: 100%;
	border-collapse: collapse;
}

table thead tr {
	border: 1px solid #111;
	background-color: #f2f2f2;
}

table td {
	vertical-align: middle !important;
	text-align: center;
}

table th, table td {
	padding-top: 08px;
	padding-bottom: 08px;
}

.table-bordered {
	box-shadow: 0px 0px 5px 0.5px gray;
}

.table-bordered td, .table-bordered th {
	border: 1px solid #dee2e6;
}

.text-right {
	text-align: end;
}

.w-20 {
	width: 20%;
}

.float-right {
	float: right;
}
</style>


<div class="brand-section">
	<div class="row">
		<div class="col-6">
			<h1 class="text-white">First Aid Hospital</h1>
		</div>
		<div class="col-6">
			<div class="company-details">
				<p class="text-white">Hatorpara,Sirajdikhan</p>
				<p class="text-white">sujan68@gmail.com</p>
				<p class="text-white">+8801727426898</p>
			</div>
		</div>
	</div>
</div>

<form action="/doctor/savePrescription" method="post">
	<div class="row">
		<div class="col-6">

			<h2 class="heading">Doctor Name: Dr. Al-Amin Hossain</h2>
			<h2 class="heading">Prescription No.: 001</h2>
			<p class="sub-heading">Tracking No.: fahl2021</p>
			<p class="sub-heading" id="date" name="date" value=""></p>
			<p class="sub-heading">Email Address: sujankhan68@gmail.com</p>
		</div>
		<div class="col-3"></div>

		<div class="col-3">
			Patient Full Name:<label>${a.name}</label><input class="sub-heading"
				type="hidden" value="${a.name}" name="name"><br>
			Gender:<label> ${a.gender}</label><input class="sub-heading"
				type="hidden" value="${a.gender}" name="gender"><br>
			Age:<label>${a.age}</label><input class="sub-heading" type="hidden"
				value="${a.age}" name="age"><br> Contact:<label>${a.contact}</label><input
				class="sub-heading" type="hidden" value="${a.contact}"
				name="contact"> <br> Email:<label> ${a.email}</label><input
				class="sub-heading" type="hidden" value="${a.email}" name=email">
			<input type="hidden" value="${a.id}" name="id">
		</div>
	</div>
	<div class="body-section">
		<h3 class="heading" style="text-align: center;">
			<u><b>Prescription</b></u>
		</h3>
		<br>


		<div class="row">
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col" colspan="2">Pathology Tests</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td colspan="2"><input type="text" name="test1"></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td colspan="2"><input type="text" name="test2"></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"><input type="text" name="test3"></td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td colspan="2"><input type="text" name="test4"></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td colspan="2"><input type="text" name="test5"></td>
						</tr>
						<tr>
							<th scope="row">6</th>
							<td colspan="2"><input type="text" name="test6"></td>
						</tr>
						<tr>
							<th scope="row">7</th>
							<td colspan="2"><input type="text" name="test7"></td>
						</tr>
						<tr>
							<th scope="row">8</th>
							<td colspan="2"><input type="text" name="test8"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-8">

				<table class="table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th colspan="2">Medicines</th>
							<th>M</th>
							<th>N</th>
							<th>E</th>
							<th>B</th>
							<th>A</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th>1</th>
							<td colspan="2"><input type="text" name="medicine1"></td>
							<td><input type="checkbox" name="M1" value="M"></td>
							<td><input type="checkbox" name="N1" value="N"></td>
							<td><input type="checkbox" name="E1" value="E"></td>
							<td><input type="checkbox" name="B1" value="B"></td>
							<td><input type="checkbox" name="A1" value="A"></td>
						</tr>
						<tr>
							<th>2</th>
							<td colspan="2"><input type="text" name="medicine2"></td>
							<td><input type="checkbox" name="M2" value="M"></td>
							<td><input type="checkbox" name="N2" value="N"></td>
							<td><input type="checkbox" name="E2" value="E"></td>
							<td><input type="checkbox" name="B2" value="B"></td>
							<td><input type="checkbox" name="A2" value="A"></td>
						</tr>

						<tr>
							<th>3</th>
							<td colspan="2"><input type="text" name="medicine3"></td>
							<td><input type="checkbox" name="M3" value="M"></td>
							<td><input type="checkbox" name="N3" value="N"></td>
							<td><input type="checkbox" name="E3" value="E"></td>
							<td><input type="checkbox" name="B3" value="B"></td>
							<td><input type="checkbox" name="A3" value="A"></td>
						</tr>
						<tr>
							<th>4</th>
							<td colspan="2"><input type="text" name="medicine4"></td>
							<td><input type="checkbox" name="M4" value="M"></td>
							<td><input type="checkbox" name="N4" value="N"></td>
							<td><input type="checkbox" name="E4" value="E"></td>
							<td><input type="checkbox" name="B4" value="B"></td>
							<td><input type="checkbox" name="A4" value="A"></td>
						</tr>
						<tr>
							<th>5</th>
							<td colspan="2"><input type="text" name="medicine5"></td>
							<td><input type="checkbox" name="M5" value="M"></td>
							<td><input type="checkbox" name="N5" value="N"></td>
							<td><input type="checkbox" name="E5" value="E"></td>
							<td><input type="checkbox" name="B5" value="B"></td>
							<td><input type="checkbox" name="A5" value="A"></td>
						</tr>
						<tr>
							<th>6</th>
							<td colspan="2"><input type="text" name="medicine6"></td>
							<td><input type="checkbox" name="M6" value="M"></td>
							<td><input type="checkbox" name="N6" value="N"></td>
							<td><input type="checkbox" name="E6" value="E"></td>
							<td><input type="checkbox" name="B6" value="B"></td>
							<td><input type="checkbox" name="A6" value="A"></td>
						</tr>
						<tr>
							<th>7</th>
							<td colspan="2"><input type="text" name="medicine7"></td>
							<td><input type="checkbox" name="M7" value="M"></td>
							<td><input type="checkbox" name="N7" value="N"></td>
							<td><input type="checkbox" name="E7" value="E"></td>
							<td><input type="checkbox" name="B7" value="B"></td>
							<td><input type="checkbox" name="A7" value="A"></td>
						</tr>
						<tr>
							<th>8</th>
							<td colspan="2"><input type="text" name="medicine8"></td>
							<td><input type="checkbox" name="M8" value="M"></td>
							<td><input type="checkbox" name="N8" value="N"></td>
							<td><input type="checkbox" name="E8" value="E"></td>
							<td><input type="checkbox" name="B8" value="B"></td>
							<td><input type="checkbox" name="A8" value="A"></td>
						</tr>
						<tr>
							<th>9</th>
							<td colspan="2"><input type="text" name="medicine9"></td>
							<td><input type="checkbox" name="M9" value="M"></td>
							<td><input type="checkbox" name="N9" value="N"></td>
							<td><input type="checkbox" name="E9" value="E"></td>
							<td><input type="checkbox" name="B9" value="B"></td>
							<td><input type="checkbox" name="A9" value="A"></td>
						</tr>
						<tr>
							<th>10</th>
							<td colspan="2"><input type="text" name="medicine10"></td>
							<td><input type="checkbox" name="M10" value="M"></td>
							<td><input type="checkbox" name="N10" value="N"></td>
							<td><input type="checkbox" name="E10" value="E"></td>
							<td><input type="checkbox" name="B10" value="B"></td>
							<td><input type="checkbox" name="A10" value="A"></td>
						</tr>
					</tbody>
				</table>

			</div>
			&nbsp;
	<div class="row">
		<div class="col-md-4">

			<input type="checkbox" name="A10" id="admit" onclick="myFunction2()"><b><i>Need
					to be admited?</i></b>
		</div>

		<div class="col-md-8" id="days">
			For<input type="text" id="days1" name="days">Days.
		</div>
	</div>
		</div>
	</div>


	<div class="body-section">
		<input type="submit" value="Save Prescriptin"
			class="float-md-right btn btn-primary btn-lg"> &nbsp; <a
			href="" onclick="window.print()"
			class="float-md-right btn btn-primary btn-lg">Print Prescription</a>
	</div>

</form>


<script>
	const monthNames = [ "January", "February", "March", "April", "May",
			"June", "July", "August", "September", "October", "November",
			"December" ];
	const dateObj = new Date();
	const month = monthNames[dateObj.getMonth()];
	const day = String(dateObj.getDate()).padStart(2, '0');
	const year = dateObj.getFullYear();
	const output = month + '\n' + day + ',' + year;
	document.getElementById("date").innerHTML = "Date:" + output;
</script>


<script type="text/javascript">
	//hide
	document.getElementById("days").style.display = 'none';

	//show
	function myFunction2() {
		var checkBox = document.getElementById("admit");
		if (checkBox.checked == true) {
			document.getElementById("days").style.display = '';
		} else {
			document.getElementById("days").style.display = 'none';
		}
	}
</script>

<jsp:include page="/WEB-INF/view/common/doctor/footer.jsp" />