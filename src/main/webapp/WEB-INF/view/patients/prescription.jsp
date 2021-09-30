<jsp:include page="/WEB-INF/view/common/receptionist/header.jsp" />
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
	padding: 30px;
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


<form action="/receptionist/#" method="post">
	<div class="row">
		<div class="col-6">

			<h2 class="heading">Invoice No.:##001</h2>
			<p class="sub-heading">Tracking No.: fahl2021</p>
			<p class="sub-heading" id="date" name="date" value=""></p>
			<p class="sub-heading">Email Address: sujankhan68@@gmail.com</p>
		</div>

		<div class="col-3"></div>

		<div class="col-3">
			Full Name:<label> ${p.name}</label><br>
			Contact:<label>${p.contact}</label><br> 
			Age:<label></label><br>
			 NID Number:<label></label>
		</div>
	</div>
	<div class="body-section">
		<h3 class="heading" style="text-align: center;">
			<u><b>Prescription</b></u>
		</h3>
		<br>
		<table class="table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>Pathology tests</th>
					<th>Medicines</th>
					<th class="w-20">Frequency</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td><label>${p.test1}</label></td>
					<td><label>${p.medicine_1}</label></td>
					<td><label>${p.medicine_1_time}</label></td>
					
				</tr>
				<tr>
					<td>2</td>
					<td><label>${p.test2}</label></td>
					<td><label>${p.medicine_2}</label></td>
					<td><label>${p.medicine_2_time}</label></td>
					
				</tr>
				<tr>
					<td>3</td>
					<td><label>${p.test3}</label></td>
					<td><label>${p.medicine_3}</label></td>
					<td><label>${p.medicine_3_time}</label></td>
				</tr>
				<tr>
					<td>4</td>
					<td><label>${p.test4}</label></td>
					<td><label>${p.medicine_4}</label></td>
					<td><label>${p.medicine_4_time}</label></td>
				</tr>
				<tr>
					<td>5</td>
					<td><label>${p.test5}</label></td>
					<td><label>${p.medicine_5}</label></td>
					<td><label>${p.medicine_5_time}</label></td>
				</tr>
				<tr>
					<td>6</td>
					<td><label>${p.test6}</label></td>
					<td><label>${p.medicine_6}</label></td>
					<td><label>${p.medicine_6_time}</label></td>
				</tr>
				<tr>
					<td>7</td>
					<td><label>${p.test7}</label></td>
					<td><label>${p.medicine_7}</label></td>
					<td><label>${p.medicine_7_time}</label></td>
				</tr>
				<tr>
					<td>8</td>
					<td><label>${p.test8}</label></td>
					<td><label>${p.medicine_8}</label></td>
					<td><label>${p.medicine_8_time}</label></td>
				</tr>
				<tr>
					<td>9</td>
					<td><label></label></td>
					<td><label>${p.medicine_9}</label></td>
					<td><label>${p.medicine_9_time}</label></td>
				</tr>
				<tr>
					<td>10</td>
					<td><label></label></td>
					<td ><label>${p.medicine_10}</label></td>
					<td><label>${p.medicine_10_time}</label></td>
				</tr>

			</tbody>
		</table>
	</div>

	<div class="body-section">
		<input type="submit" value="Submit Payment"
			class="float-md-right btn btn-primary btn-lg"> <a href=""
			onclick="window.print()"
			class="float-md-right btn btn-primary btn-lg">Print Prescription</a>
	</div>

</form>

<script type="text/javascript">
	//hide
	document.getElementById("transactionField").style.display = 'none';
	//show
	function myFunction() {
		document.getElementById("transactionField").style.display = '';
	}
</script>



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


<jsp:include page="/WEB-INF/view/common/receptionist/footer.jsp" />