<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-12">
		<div class="card" style="background-color:	#2E8B57;">
			<div class="card-header">
				<h3 class="card-title"><b>All Departments</b></h3>
			</div>
			<div class="card">
				<!-- /.card-header -->
				
				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Code</th>
								<th>Name</th>
								<th>Description</th>
								<th>Update</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${departments}" var="d">
								<tr>
									<td>${d.code}</td>
									<td>${d.name}</td>
									<td>${d.description}</td>
									<td><a class="btn btn-info"
										href="/receptionist/updateApproveStatus/${d.id}">Update</a>
									</td>
									<td><a class="btn btn-danger"
										href="/admin/deleteDepartment/${d.id}">Remove</a>
									</td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>Code</th>
								<th>Name</th>
								<th>Description</th>
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