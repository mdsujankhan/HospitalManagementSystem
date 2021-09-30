<jsp:include page="/WEB-INF/view/common/pathologist/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-12">
		<div class="card" style="background-color:	#90EE90;">
			<div class="card-header" >
				<h3 class="card-title" style="color: black;">Completed COVID-19 Test Applications</h3>
			</div>
			<form action="">
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
								<th>Swab Taken Date</th>								
								<th>Details</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${applies}" var="a">
								<tr>
									<td>${a.name}</td>
									<td>${a.gender}</td>
									<td>${a.age}</td>
									<td>${a.address}</td>
									<td>${a.nidNo}</td>
									<td>${a.passportNo}</td>
									<td>${a.applyDate}</td>
									<td>${a.swabTakenDate}</td>
									<td><a class="btn btn-info"
										href="/pathologist/details/${a.id}">Details</a></td>
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
								<th>Swab Taken Date</th>
								<th>Details</th>
							</tr>
						</tfoot>
					</table>
				</div>	
			</div>		
			</form>
		</div>	
	</div>
</div>

<jsp:include page="/WEB-INF/view/common/pathologist/footer.jsp" />