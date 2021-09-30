<jsp:include page="/WEB-INF/view/common/pathologist/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row">
			<div class="col-sm-8 col-md-10 col-lg-10 mx-auto d-table h-200">
				<div class="d-table-cell align-middle">

					<div class="card">
						<div class="card-body" style="background-color: #d1d1d1; ">
						<!-- #d1d1d1; -->
							<div class="m-sm-4">

								<form  action="/pathologist/updateCovidTestReport" method="POST">
								<h1 style="text-align: center;"><u><b>Covid-19 Test Report</b></u></h1>
								<input type="hidden" value="${a.id}" name="id">
								&nbsp;
									<div class="row">
									<div class="col-md-1"> </div>
									<div class="col-md-2"><label><h4>Full Name: </h4></label> </div>
									<div class="col-md-3"><label class="form-label" for="description"><h4>${a.name}<h4></h4></label></div>								
									
									<div class="col-md-1"> </div>
									<div class="col-md-2"><label><h4>Age: </h4></label> </div>
									<div class="col-md-3"><label class="form-label" for="description"><h4>${a.age}<h4></h4></label></div>
									
									</div>
									
									<div class="row">
									<div class="col-md-1"> </div>
									<div class="col-md-2"><label><h4>Gender: </h4></label> </div>
									<div class="col-md-3"><label class="form-label" for="description"><h4>${a.gender}<h4></h4></label></div>
								
									
									<div class="col-md-1"> </div>
									<div class="col-md-2"><label><h4>NID No: </h4></label> </div>
									<div class="col-md-3"><label class="form-label" for="description"><h4>${a.nidNo}<h4></h4></label></div>									
									</div>
									
									<div class="row">
									<div class="col-md-1"> </div>
									<div class="col-md-2"><label><h4>Apply Date: </h4></label> </div>
									<div class="col-md-3"><label class="form-label" for="description"><h4>${a.applyDate}<h4></h4></label></div>
								
									
									<div class="col-md-1"> </div>
									<div class="col-md-2"><label><h4>Address: </h4></label> </div>
									<div class="col-md-3"><label class="form-label" for="description"><h4>${a.address}<h4></h4></label></div>
									
									</div>
									
									<div class="row">
									<div class="col-md-1"> </div>
									<div class="col-md-10">	<div class="mb-3">
										<label class="form-label"><h4 style="color: blue">Covid-19 Test Result:</h4> </label> <select
											class="form-control form-control-lg" name="result">	
											<option selected="selected" disabled="disabled">Select One Option</option>									
												<option value="Positive" style="color: red">Positive</option>
												<option value="Negative" style="color: green">Negative</option>
												<option value="Pending" >Pending</option>										
										</select></label> </div>
									<div class="col-md-1"> </div>								
									</div>								
															
										&nbsp;																												
									<div class="text-center mt-3">
									<button type="submit" class="btn btn-lg btn-primary">Save Result</button>
									</div>
								</form>								
																								
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

 </main>



<jsp:include page="/WEB-INF/view/common/pathologist/footer.jsp" />