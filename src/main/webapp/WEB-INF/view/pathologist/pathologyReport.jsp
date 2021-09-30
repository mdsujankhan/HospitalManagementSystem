<jsp:include page="/WEB-INF/view/common/pathologist/header.jsp" />
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

<form action="/pathologist/savePathologiBill" method="post">
	<div class="row">
		<div class="col-6">
			<h2 class="heading">Invoice No.: 001</h2>
			<p class="sub-heading">Tracking No.: fahl2021</p>
			<p class="sub-heading" id="date" name="date" value=""></p>
			<p class="sub-heading">Email Address: sujankhan68@@gmail.com</p>
		</div>
		<div class="col-3"></div>

		<div class="col-3">
			Full Name:<label>${name}</label><input class="sub-heading"
				type="hidden" value="${name}" name="name"><br> Gender:<label>${gender}</label><input
				class="sub-heading" type="hidden" value="${gender}" name="gender"><br>

			Email:<label>${email}</label><input class="sub-heading" type="hidden"
				value="${email}" name="age"><br> contact:<label>
				${contact}</label><input class="sub-heading" type="hidden"
				value="${contact}" name="contact"> <input type="hidden"
				value="${id}" name="id">
		</div>
	</div>
	<div class="body-section">

		<table class="table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th style="text-align: center;">Advised For</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td>1</td>
					<td>${test_1}</td>
				</tr>

				<tr>
					<td>2</td>
					<td>${test_2}</td>
				</tr>

				<tr>
					<td>3</td>
					<td>${test_3}</td>
				</tr>
				<tr>
					<td>4</td>
					<td>${test_4}</td>
				</tr>
				<tr>
					<td>5</td>
					<td>${test_5}</td>
				</tr>

			</tbody>
		</table>
		<br>
	</div>


	<div class="text-center">
		&nbsp;
		<h1 class="h2">
			<u>Create a pathology Report</u>
		</h1>
	</div>

	<div class="body-section">
		<table class="table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th style="text-align: center;">Tests Name</th>
					<th>Department</th>
					<th>Fee</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${tests}" var="d" varStatus="loop">
					<tr>
						<td>${loopIndex}</td>
						<td>${d.name}</td>
						<td>${d.department}</td>
						<td>${d.fee}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<br>
	</div>
	<div class="body-section">
		<input type="submit" value="Submit Payment"
			class="float-md-right btn btn-primary btn-lg"> <a href=""
			onclick="window.print()" class="float-md-right btn btn-primary btn-lg">Print Invoice</a>
	</div>
</form>











<%-- <div class="card">
	<div class="card-body">
		<div class="m-sm-4">

			<form>
				<label for="name">What do you want to add?:</label> <select
					name="name" id="name" class="form-control">
					<option value="volvo" selected="selected" disabled="disabled">------Select
						one Option to add-------</option>
					<c:forEach items="${tests}" var="t">
						<option value="${t.name}">${t.name}</option>
					</c:forEach>
				</select> <br>
				<button id="btnAdd" class="btn btn-success">Add to List</button>
				<br> <label for="list">Already added List:</label> <select
					id="list" name="list" class="form-control" multiple>



					<table class="table table-hover" id="list" name="list"
						class="form-control" multiple>

						</select>
						<br>
						<input type="submit" class="btn btn-danger" id="btnRemove"
							value="Remove Selected">



						</form>
						</div>
						</div>
						</div> --%>


						<script>
        const btnAdd = document.querySelector('#btnAdd');
        const btnRemove = document.querySelector('#btnRemove');
        const sb = document.querySelector('#list');
        const name = document.querySelector('#name');

        btnAdd.onclick = (e) => {
            e.preventDefault();

            // validate the option
            if (name.value == '') {
                alert('Please enter the name.');
                return;
            }
            // create a new option
            const option = new Option(name.value, name.value);
            // add it to the list
            sb.add(option, undefined);

            // reset the value of the input
            name.value = '';
            name.focus();
        };

        // remove selected option
        btnRemove.onclick = (e) => {
            e.preventDefault();

            // save the selected option
            let selected = [];

            for (let i = 0; i < sb.options.length; i++) {
                selected[i] = sb.options[i].selected;
            }

            // remove all selected option
            let index = sb.options.length;
            while (index--) {
                if (selected[index]) {
                    sb.remove(index);
                }
            }
        };
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
						<jsp:include page="/WEB-INF/view/common/pathologist/footer.jsp" />