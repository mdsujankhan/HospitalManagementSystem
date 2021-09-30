<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon"
	href="/app-assets/img/dash/icons/icon-48x48.png" />

<link rel="canonical"
	href="https://demo-basic.adminkit.io/ui-forms.html" />

<title>Hospital Management System</title>

<link href="/app-assets/css/dash/app.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
	rel="stylesheet">
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>




<main class="d-flex w-100">
	<div class="container d-flex flex-column">
		<div class="row vh-100">
			<div class="col-sm-10 col-md-8 col-lg-7 mx-auto d-table h-50">
				<div class="d-table-cell align-middle" style="background-color:#3CB371;">

					<div class="text-center mt-4">
					&nbsp;
						<h1 class="h2">Welcome back, User</h1>
						<p class="lead">Sign in to your account to continue</p>
					</div>

					<div class="card">
						<div class="card-body" style="background-color:	#E0FFFF;">
							<div class="m-sm-4">
								<div class="text-center">
									<img src="/app-assets/img/dash/avatars/avatar.jpg"
										alt="Charles Hall" class="img-fluid rounded-circle"
										width="132" height="132" />
								</div>

								<form method="POST" action="/user/processlogin2">
									<div class="mb-3">
										<label class="form-label">User Name/Phone Number</label> <input
											class="form-control form-control-lg" type="text"
											name="username" placeholder="Enter your Username" />
									</div>

									<div class="mb-3">
										<label class="form-label">Password</label> <input
											class="form-control form-control-lg" type="password"
											name="password" placeholder="Enter your password" />
									</div>

									<div class="mb-3">
										<label class="form-label">Login As </label> <select
											class="form-control form-control-lg" name="role">
											<c:forEach items="${roles}" var="r">
												<option value="${r.name}">${r.name}</option>
											</c:forEach>
										</select> <small> <a href="/user/login">Forgot password?</a>
										</small>
									</div>

									<div>
										<label class="form-check"> <input
											class="form-check-input" type="checkbox" value="remember-me"
											name="remember-me" checked> <span
											class="form-check-label"> Remember me next time </span>
										</label>
									</div>

									<div class="text-center mt-3">
										<button type="submit" class="btn btn-lg btn-primary">Sign
											in</button>
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

<script src="/app-assets/js/dash/app.js"></script>

</body>

</html>