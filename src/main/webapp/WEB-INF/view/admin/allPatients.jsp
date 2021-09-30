<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-12">
		<div class="card">
			<!-- 	<div class="card-header">
				<h3 class="card-title">All Employees</h3>
			</div> -->
			<div class="card">
				<!-- /.card-header -->
				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>Gender</th>
								<th>Email</th>
								
								<th>Blood Group</th>
								<th>Department</th>
								<th>Doctor</th>
								<th>Update</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${patients}" var="p">
								<tr>
									<td>${p.name}</td>
									<td>${p.gender}</td>
									<td>${p.email}</td>									
									
									<td>${p.bloodGroup}</td>
									<td>${p.department}</td>
									<td>${p.doctor}</td>
									<td><a class="btn btn-info"
										href="/receptionist/updateApproveStatus/${p.id}">Update</a></td>
									<td><a class="btn btn-danger"
										href="/patient/delete/${p.id}">Remove</a></td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>Name</th>
								<th>Gender</th>
								<th>Email</th>								
								
								<th>Blood Group</th>
								<th>Department</th>
								<th>Doctor</th>
								<th>Update</th>
								<th>Remove</th>
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

<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />