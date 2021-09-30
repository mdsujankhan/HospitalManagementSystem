<jsp:include page="/WEB-INF/view/common/pathologist/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">All COVID-19 Test Applications Are Shows
					Here.</h3>
			</div>
			<div class="card">
				<!-- /.card-header -->
				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>Gender</th>
								<th>Age</th>
								<th>Address</th>
								<th>NID NO</th>
								<th>Passport NO</th>
								<th>Apply Date</th>
								<th>Approve</th>
								<th>Reject</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${#}" var="a">
								<tr>
									<td>${a.name}</td>
									<td>${a.gender}</td>
									<td>${a.age}</td>
									<td>${a.address}</td>
									<td>${a.nidNo}</td>
									<td>${a.passportNo}</td>
									<td>${a.applyDate}</td>
									<td><a class="btn btn-info" href="/receptionist/updateApproveStatus/${a.id}">Approve</a></td>
									<td><a class="btn btn-danger"
										href="/receptionist/delete/${a.id}">Reject</a></td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>Name</th>
								<th>Gender</th>
								<th>Age</th>
								<th>Address</th>
								<th>NID NO</th>
								<th>Passport NO</th>
								<th>Apply Date</th>
								<th>Approve</th>
								<th>Reject</th>
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

<jsp:include page="/WEB-INF/view/common/pathologist/footer.jsp" />