<jsp:include page="/WEB-INF/view/common/pathologist/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-sm-10 col-md-8 col-lg-11 mx-auto d-table h-100">
	<div class="d-table-cell align-middle"
		style="background-color: #8FBC8F;">
		<div class="text-center">
			&nbsp;
			<h1 class="h2">
				<u><b>Details Of COVID-19 Test</b></u>
			</h1>
		</div>
		<div class="card">
			<div class="card-body" style="background-color: #F0F8FF;">
				<div class="m-sm-4">

					<div class="row">
						<div class="col-md-5">
							<label class="form-label">Name:</label> 
								<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.name}"/>
						</div>

						<div class="col-md-2"></div>

						<div class="col-md-5" id="transactionField">
							<label class="form-label">Age: </label> 
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.age}"/>
						</div>
					</div>

					<div class="row">
						<div class="col-md-5">
							<label class="form-label">Gender:</label>
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.gender}"/>
						</div>

						<div class="col-md-2"></div>

						<div class="col-md-5" id="transactionField">
							<label class="form-label">Address: </label>
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.address}"/>
						</div>
					</div>

					<div class="row">
						<div class="col-md-5">
							<label class="form-label">NID No:</label>
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.nidNo}"/>
						</div>

						<div class="col-md-2"></div>

						<div class="col-md-5" id="transactionField">
							<label class="form-label">Passport No: </label>
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.passportNo}"/>
						</div>
					</div>

					<div class="row">
						<div class="col-md-5">
							<label class="form-label">Apply Date:</label> 
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.applyDate}"/>
						</div>

						<div class="col-md-2"></div>

						<div class="col-md-5" id="transactionField">
							<label class="form-label">Swab Taken Date: </label> 
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.swabTakenDate}"/>
						</div>
					</div>

					<div class="row">
						<div class="col-md-5">
							<label class="form-label">Test Result:</label> 
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.result}"/>
						</div>

						<div class="col-md-2"></div>

						<div class="col-md-5" id="transactionField">
							<label class="form-label">Transaction ID:</label> 
							
							<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.transactionId}"/>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-5">
							<label class="form-label">Payment Method:</label>
								<input class="form-control form-control-lg" disabled="disabled" type="text" value="${a.paymentMethod}"/>
						</div>

						<div class="col-md-2"></div>

						<div class="col-md-5" id="transactionField">
						</div>
					</div>
					<div class="text-center mt-3">
					<a href="/pathologist/completedRequests" class="btn btn-lg btn-primary">OK</a>
					</div>
					<br>
				</div>
			</div>
		</div>

	</div>
</div>
<script src="/app-assets/js/dash/app.js"></script>

<jsp:include page="/WEB-INF/view/common/pathologist/footer.jsp" />