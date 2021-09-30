<jsp:include page="/WEB-INF/view/common/header.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<form action="/admin/update" method="POST" style="background-color: 	#E6E6FA;">
&nbsp;
	<h1 style="text-align: center; color: #00000;"><b><u> User Information:</u></b></h1>
	&nbsp;
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="Code:">Code:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="code" value="${u.code}">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="password">Password:</label>

		</div>
		<div class="col-md-3">
			<input type="password" class="form-control" name="password" value="${u.password}">

		</div>
		<div class="col-md-1"></div>
	</div>
<input type="hidden"  name="id" value="${u.id}">
	&nbsp;

	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="name">Name:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="name" value="${u.name}">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="contact">Contact:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="contact" value="${u.contact}">
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;


	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="father_name">Father Name:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="father_name" value="${u.fatherName}">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="mother_name">Mother Name:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="mother_name" value="${u.motherName}">
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

			<input type="email" class="form-control" name="email" value="${u.email}">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="gender">Gender:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="gender">
				<option selected>Open this select menu</option>
				<option value="Male">Male</option>
				<option value="Female">Female</option>
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
			<textarea name="address" rows="2" cols="26">${u.address}</textarea>
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

			<label for="blood_group">Blood Group:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="blood_group">
				<option selected disabled>Open this select menu</option>
				<option value="A RhD negative (A-)">A RhD negative (A-)</option>
				<option value="A RhD positive (A+)">A RhD positive (A+)</option>
				<option value="B RhD positive (B+)">B RhD positive (B+)</option>
				<option value="B RhD negative(B-)">B RhD negative(B-)</option>
				<option value="O RhD positive (O+)">O RhD positive (O+)</option>
				<option value="O RhD negative (O-)">O RhD negative (O-)</option>
				<option value="AB RhD positive (AB+)">AB RhD positive (AB+)</option>
				<option value="AB RhD negative (AB-)">AB RhD negative (AB-)</option>
			</select>
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for = "merital_status">Marital status:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="merital_status">
				<option selected disabled>Open this select menu</option>
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
			<label for="account_no">Account Number:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="account_no" value="${u.accountNo}">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="basic_salary">Basic Salary:</label>
		</div>
		<div class="col-md-3">
			<input type="text" class="form-control" name="basic_salary" value="${u.basicSalary}">
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">

			<label for="role">Role:</label>
		</div>
		<div class="col-md-3">
			<select class="form-select mb-3" name="role">
				<option selected disabled>Open this select menu</option>
				<option value="Admin">Admin</option>
				<option value="Doctor">Doctor</option>
				<option value="Receptionist">Receptionist</option>
				<option value="Pathologist">Pathologist</option>				
			</select>
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label class="form-label">Select Department </label>
		</div>
		<div class="col-md-3">
						 <select
				class="form-control form-control-lg" name="department">
				<c:forEach items="${u.department}" var="d">
					<option value="${u.name}">${u.name}</option>
				</c:forEach>
			</select>
		</div>
		<div class="col-md-1"></div>
	</div>


	&nbsp;
	<div class="form-group row">
		<div class="col-md-1"></div>
		<div class="col-md-1">
			<label for="photo">Your Photo:</label>
		</div>
		<div class="col-md-3">
			<input type="file" id="photo" name="photo">
		</div>
		<div class="col-md-2"></div>

		<div class="col-md-1">
			<label for="designation">Designation:</label>
		</div>
		<div class="col-md-3">
			<textarea name="designation" rows="2" cols="26">${u.designation}</textarea>
		</div>
		<div class="col-md-1"></div>
	</div>

	&nbsp;
	<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-4">
			<button type="submit" class="btn btn-info">Update User</button>
		</div>
		<div class="col-md-3"></div>
	</div>
	&nbsp;

</form>

<jsp:include page="/WEB-INF/view/common/footer.jsp" />