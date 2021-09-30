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
								<th>Picture</th>
								<th>Name</th>
								<th>Gender</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Role</th>
								<th>Department</th>
								<th>Profile</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="u">
								<tr>
								<td><img src="${u.photo }" alt="profile" width="80" height="80"></td>
									<td>${u.name}</td>
									<td>${u.gender}</td>
									<td>${u.email}</td>
									<td>${u.contact}</td>
									<td>${u.role}</td>
									<td>${u.department}</td>
									<td><a class="btn btn-info" href="/admin/edit/${u.id}">Profile</a>
									</td>
									<td><a class="btn btn-danger" href="/admin/delete/${u.id}">Remove</a>
									</td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>Picture</th>
								<th>Name</th>
								<th>Gender</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Role</th>
								<th>Department</th>
								<th>Profile</th>
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