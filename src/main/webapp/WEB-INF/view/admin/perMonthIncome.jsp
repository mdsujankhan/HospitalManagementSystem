<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-12">
		<div class="card" style="background-color: #2E8B57;">
			<div class="card-header">
				<h3 class="card-title">
					<b>Departments Based Incomes</b>
				</h3>
			</div>
			<div class="card">
				<!-- /.card-header -->

				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Month</th>
								<th>Covid-19 Test Fee</th>
								<th>Doctor Fee</th>
								<th>Cabin Rent</th>
								<th>Pathology Bill</th>
								<th>Medicine & Other's</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${report}" var="r">
								<tr>
								<td>${r.month}</td>
									<td>${r.covidTest}</td>
									<td>${r.doctorFee}</td>
									<td>${r.cavinRent}</td>
									<td>${r.pathologyBill}</td>
									<td>${r.medicineBill}</td>
									<td>${r.totalBill}</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th>Month</th>
								<th>Covid-19 Test Fee</th>
								<th>Doctor Fee</th>
								<th>Cabin Rent</th>
								<th>Pathology Bill</th>
								<th>Medicine & Other's</th>
								<th>Total</th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!-- /.col -->
	</div>
</div>
<script>
	function getPercent() {
		var covidTest = parseInt(document.getElementById("covidTest").value)
		var doctorFee = parseInt(document.getElementById("doctorFee").value)
		var cavinRent = parseInt(document.getElementById("cavinRent").value)
		var pathologyBill = parseInt(document.getElementById("pathologyBill").value)
		var medicineBill = parseInt(document.getElementById("medicineBill").value)
		var totalBill = parseInt(document.getElementById("totalBill").value)

		//var totalCost = fees - (fees * vat / 100);
		document.getElementById("covid").innerHTML = covidTest;

		//document.getElementById("gTotal2").value = totalCost;
		//  alert(totalCost);
	}
</script>
<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />