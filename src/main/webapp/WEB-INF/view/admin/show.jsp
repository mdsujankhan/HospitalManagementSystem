<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">DataTable with minimal features & hover
					style</h3>
			</div>
			<div class="card">
				<!-- /.card-header -->
				<div class="card-body">


					<table id="example1" class="table table-bordered table-striped">

						<thead>
							<tr>
								<th>Code</th>
								<th>Name</th>								
								<th>Email</th>
								<th>Contact</th>
								<th>Address</th>
								<th>Role</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="u">
								<tr>
									<td>${u.code}</td>
									<td>${u.name}</td>
									<td>${u.email}</td>	
									<td>${u.contact}</td>
									<td>${u.address}</td>
									<td>${u.role}</td>									
									<td><a class="btn btn-info"  href="/admin/edit/${u.id}">Edit</a></td>
									<td><a class="btn btn-danger" href="/admin/delete/${u.id}">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th>Code</th>
								<th>Name</th>								
								<th>Email</th>
								<th>Contact</th>
								<th>Address</th>
								<th>Role</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!--card-body -->
			</div>
			<!-- /.card -->
		</div>
	</div>

	<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />