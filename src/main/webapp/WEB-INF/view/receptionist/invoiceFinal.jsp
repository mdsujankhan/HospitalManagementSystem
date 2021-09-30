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

<!-- <div class="body-section"> -->
<form action="/receptionist/completePayment" method="post">
	<div class="row">
		<div class="col-6">
			<h2 class="heading">Invoice No.: 001</h2>
			<p class="sub-heading">Tracking No.: fahl2021</p>
			<p class="sub-heading" id="date" name="date" value=""></p>
			<p class="sub-heading">Email Address: sujankhan68@@gmail.com</p>
		</div>
		<div class="col-3"></div>

		<div class="col-3">
			Full Name:<label>${b.name}</label><input class="sub-heading"
				type="hidden" value="${b.name}" name="name"><br>

			Address:<label>${b.address}</label><input class="sub-heading"
				type="hidden" value="${b.address}" name="address"><br>

			Age:<label>${b.age}</label><input class="sub-heading" type="hidden"
				value="${b.age}" name="age"><br> NID Number:<label>
				${a.nidNo}</label><input class="sub-heading" type="hidden"
				value=" ${b.nidNo}" name="nid"> <input type="hidden"
				value="${b.id}" name="id">
		</div>
	</div>
	<div class="body-section">
		<h3 class="heading" style="text-align: center;">
			<u><b>Invoice</b></u>
		</h3>
		<br>
		<table class="table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>Services</th>
					<th class="w-20">Price</th>
					<th class="w-20">Grand Total</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Doctor Fee</td>
					<td>${b.doctorFee}</td>
					<td>${b.doctorFee}</td>
				</tr>
				
				<tr>
					<td>2</td>
					<td>Pathology Fee</td>
					<td>${b.pathologyBill}</td>
					<td>${b.pathologyBill}</td>
				</tr>
				
				<tr>
					<td>3</td>
					<td>Cabin Rent</td>
					<td>${b.cavinRent}</td>
					<td>${b.cavinRent}</td>
					<input type="hidden" name="doctor_fee" id="doctor_fee" value="${b.doctorFee}">
					<input type="hidden" name="pathology_bill" id="pathology_bill" value="${b.pathologyBill}">
					<input type="hidden" name=""cavin_rent"" id="cavin_rent" value="${b.cavinRent}">
					<input type="hidden" name="medicine_and_others" id="medicine_and_others" value="${b.medicineAndOthers}">
				</tr>
				
				<tr>
					<td>4</td>
					<td>Medicine & Other's</td>
					<td>${b.medicineAndOthers}</td>
					<td>${b.medicineAndOthers}</td>
				</tr>
				
				<tr>
					<td></td>
					<td colspan="2" class="text-right">Sub Total =</td>
					<td><label id="total_bill">${total}</label></td>
					<input type="hidden" id="fee" name="fee" value="${total}">
				</tr>

				<tr>
					<td></td>
					<td colspan="2" class="text-right">Discount %1X</td>
					<td><input type="text" id="vat" name="vat"
						onchange="getTotal();"></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="2" class="text-right">Grand Total =</td>
					<td><label id="gTotal"></label></td>

					<input type="hidden" id="gTotal2" name="gTotal2"></input>
				</tr>

			</tbody>
		</table>
		<br>
		<div class="row">
			<div class="col-md-5">
				<label class="form-label"><h3>Payment Method:</h3> </label> <select
					class="form-control" name="method" onchange="myFunction()">
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
						ID:</h3> </label> <input class="form-control" type="text" name="transactionID"></input>
			</div>
		</div>

		<img src="/app-assets/table/dist/img/credit/visa.png" alt="Visa">
		<img src="/app-assets/table/dist/img/credit/mastercard.png"
			alt="Mastercard"> <img
			src="/app-assets/table/dist/img/credit/american-express.png"
			alt="American Express"> <img
			src="/app-assets/table/dist/img/credit/paypal2.png" alt="Paypal">
		<h3 class="heading">Payment Status: Paid</h3>
	</div>

	<div class="body-section">
		<input type="submit" value="Realise Patient"
			class="float-md-right btn btn-primary btn-lg"> <a href=""
			onclick="window.print()"
			class="float-md-right btn btn-primary btn-lg">Print Invoice</a>
	</div>

</form>

<script type="text/javascript">
	//hide
	document.getElementById("transactionField").style.display = 'none';

	//show
	function myFunction() {

		document.getElementById("transactionField").style.display = '';
		/* 	var  checkBox = document.getElementById("checkId");
		 if (checkBox.checked == true) {
		 document.getElementById("passDiv").style.display = '';
		 }else{
		 document.getElementById("passDiv").style.display = 'none'; 
		 } */
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

<script>
	function getTotal() {
		var fees = parseInt(document.getElementById("fee").value)
		var vat = parseInt(document.getElementById("vat").value)
		var totalCost = fees - (fees * vat / 100);
		document.getElementById("gTotal").innerHTML = totalCost;
		document.getElementById("gTotal2").value = totalCost;
		//  alert(totalCost);
	}
</script>
<jsp:include page="/WEB-INF/view/common/receptionist/footer.jsp" />