<jsp:include page="/WEB-INF/view/common/doctor/header.jsp" />

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--  <section>
        <div class="container-fluid"> -->
<div class="row">
	<div class="col-12">
		<div class="card" style="background-color:	#556B2F;">
			<div class="card-header">
				<h3 class="card-title">All New Appointments Are Shows Here.</h3>
			</div>
			<div class="card">
				<!-- /.card-header -->
				<div class="card-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Contact No</th>
								<th>Time Slot</th>								
								<th>Date</th>								
								<th>Confirm</th>
								<th>Reject</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${appointments}" var="a">
								<tr>
									<td>${a.name}</td>
									<td>${a.age}</td>
									<td>${a.gender}</td>									
									<td>${a.contact}</td>
									<td>${a.slot}</td>
									<td>${a.date}</td>
									<td><a class="btn btn-info"  href="/doctor/updateAppointmentStatus/${a.id}">Confirm</a></td>
									<td><a class="btn btn-danger" href="/doctor/delete/${a.id}">Reject</a></td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Contact No</th>
								<th>Time Slot</th>								
								<th>Date</th>								
								<th>Confirm</th>
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
	<!-- /.row -->
	<!--        </div> -->
	<!-- /.container-fluid -->
	<!--    </section> -->


<jsp:include page="/WEB-INF/view/common/doctor/footer.jsp" />