<jsp:include page="/WEB-INF/view/common/doctor/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form method="POST" action="/patient/save">
	<h1 style="text-align: center; color: mediumblue;">
		<b><u> Patient Information:</u></b>
	</h1>

	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="Code:">Code:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="code"
				placeholder="Enter Code">
		</div>
		<div class="col-md-2"></div>

		
		<div class="col-md-1">
			<label for="birthday">Date of Birth:</label>
		</div>
		<div class="col-md-3">
			<input type="date" id="birthday" name="birthday">
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;

	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="name">Name:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="name"
				placeholder="Enter Code">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="contact">Contact:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="contact"
				placeholder="Enter Contact">
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;


	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">

			<label for="email">Email:</label>
		</div>
		<div class="col-md-3">

			<input type="text" class="form-control" name="email"
				placeholder="Enter Email">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="password">Gender:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="gender">
				<option selected disabled="disabled">Open this select menu</option>
				<option>Male</option>
				<option>Female</option>
			</select>
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;



	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="address">Address</label>
		</div>
		<div class="col-md-3">
			<textarea name="address" rows="2" cols="26"></textarea>
		</div>
		<div class="col-md-2"></div>
		
				<div class="col-md-1">
			<label for="password">Marital status:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="maritalStatus">
				<option selected disabled="disabled">Open this select menu</option>
				<option value="Married">Married</option>
				<option value="Unmarried">Unmarried</option>
			</select>
		</div>
		
		<div class="col-md-1"></div>
	</div>

	&nbsp;

	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">

			<label for="email">Blood Group:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="bloodGroup">
				<option selected disabled="disabled">Open this select menu</option>
				<option>A RhD negative (A-)</option>
				<option>A RhD positive (A+)</option>
				<option>B RhD positive (B+)</option>
				<option>B RhD negative(B-)</option>
				<option>O RhD positive (O+)</option>
				<option>O RhD negative (O-)</option>
				<option>AB RhD positive (AB+)</option>
				<option>AB RhD negative (AB-)</option>
			</select>
		</div>
		<div class="col-md-2"></div>

		<!-- ********************** -->
		<div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="card">
				<div class="card-header">
					<h5 class="card-title">Patiets Records:</h5>
				</div>
				<div class="card-body">
					<div>
						<label class="form-check"> <input class="form-check-input"
							type="checkbox" value="Diabetes" name="diabetes" id="diabetes"> <span
							class="form-check-label">Diabetes</span>
						</label> &nbsp; <label class="form-check"> <input
							class="form-check-input" type="checkbox" value="Blood Pressure"
							name="blood_pressure" id="blood_pressure"> <span class="form-check-label">Blood
								Pressure</span>
						</label> &nbsp; <label class="form-check"> <input
							class="form-check-input" type="checkbox" value="Heart Disease"
							name="heart_disease" id="heart_disease"> <span class="form-check-label">Heart
								Disease</span>
						</label> &nbsp; <label class="form-check"> <input
							class="form-check-input" type="checkbox" value="Other Disease"
							name="other_disease" id="other_disease"> <span class="form-check-label">Other
								Disease</span>
						</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>


	&nbsp;

	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">

			<label for="email">Department:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="department">
				<c:forEach items="${departments}" var="d">
					<option value="${d.name}">${d.name}</option>
				</c:forEach>
			</select>
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="password">Doctor:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="doctor">

				<option value="Married">Married</option>

			</select>
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;


	<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-4">
			<button type="submit" class="btn btn-info">Data Save</button>
		</div>
		<div class="col-md-3"></div>
	</div>
	&nbsp;

</form>


<jsp:include page="/WEB-INF/view/common/doctor/footer.jsp" />