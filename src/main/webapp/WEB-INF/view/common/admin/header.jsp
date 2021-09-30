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
<link href="/app-assets/css/datatables.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
	rel="stylesheet">

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/app-assets/table/plugins/fontawesome-free/css/all.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="/app-assets/table/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/app-assets/table/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/app-assets/table/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/app-assets/table/dist/css/adminlte.min.css">

</head>

<body>



	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="home"> <i class="align-middle"
					data-feather="home"></i> <span class="align-middle"><b>Hospital
							Management System</b></span>
				</a>

				<ul class="sidebar-nav">
					<li class="sidebar-item"><a class="sidebar-link" href="home">
							<i class="align-middle" data-feather="grid"></i> <span
							class="align-middle">Admin's Dashboard</span>
					</a></li>
					
					<li class="sidebar-item"><a class="sidebar-link"
						href="/admin/getAllCovidIncome"> <i class="align-middle"
							data-feather="book"></i> <span class="align-middle">Total
								Income Reports</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/admin/getMonthlyIncome"> <i class="align-middle"
							data-feather="book"></i> <span class="align-middle">Incomes
								by Month</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/admin/pieChart"> <i class="align-middle"
							data-feather="book"></i> <span class="align-middle">Patient Analysis</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/role/addRole"> <i class="align-middle"
							data-feather="plus"></i> <span class="align-middle">Add
								Role</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/admin/addDepartment"> <i class="align-middle"
							data-feather="plus"></i> <span class="align-middle">Add
								Department</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/admin/addTest"> <i class="align-middle"
							data-feather="plus"></i> <span class="align-middle">Add
								Test</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/admin/addUser"> <i class="align-middle"
							data-feather="user"></i> <span class="align-middle">Add
								User</span>
					</a></li>

					<li class="sidebar-header">Admin Components</li>
					
				</ul>
			</div>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle"> <i
					class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">

						<li><a href="/admin/allEmployees"
							class="btn btn-outline-info "> <i class="align-middle"
								data-feather="users"></i> <span class="align-middle"><b>All
										Employees</b></span>
						</a></li> &nbsp;

						<li><a href="/admin/allDepartments"
							class="btn btn-outline-info "> <i class="align-middle"
								data-feather="list"></i> <span class="align-middle"><b>All
										Departments</b></span>
						</a></li> &nbsp;

						<li><a href="#" class="btn btn-outline-info "> <i
								class="align-middle" data-feather="list"></i> <span
								class="align-middle"><b>All Bills</b></span>
						</a></li> &nbsp;

						<li><a href="/admin/allPatients"
							class="btn btn-outline-info "> <i class="align-middle"
								data-feather="users"></i> <span class="align-middle"><b>All
										Patients</b></span>
						</a></li>
						<li><a href="/admin/allTests" class="btn btn-outline-info ">
								<i class="align-middle" data-feather="list"></i> <span
								class="align-middle"><b>All Tests</b></span>
						</a></li> &nbsp;







						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle" href="#" id="alertsDropdown"
							data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="bell"></i> <span
										class="indicator">1</span>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
								aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">4 New Notifications</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-danger" data-feather="alert-circle"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Update completed</div>
												<div class="text-muted small mt-1">Restart server 12
													to complete the update.</div>
												<div class="text-muted small mt-1">30m ago</div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all notifications</a>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle" href="#" id="messagesDropdown"
							data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="message-square"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
								aria-labelledby="messagesDropdown">
								<div class="dropdown-menu-header">
									<div class="position-relative">4 New Messages</div>
								</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="/app-assets/img/dash/avatars/avatar-5.jpg"
													class="avatar img-fluid rounded-circle"
													alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">Md. Al-Amin</div>
												<div class="text-muted small mt-1">Hey! How are You?.</div>
												<div class="text-muted small mt-1">15m ago</div>
											</div>
										</div>
									</a>
								</div>



								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all messages</a>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle d-inline-block d-sm-none"
							href="#" data-bs-toggle="dropdown"> <i class="align-middle"
								data-feather="settings"></i>
						</a> <a class="nav-link dropdown-toggle d-none d-sm-inline-block"
							href="#" data-bs-toggle="dropdown"> <img
								src="/app-assets/img/dash/avatars/avatar.jpg"
								class="avatar img-fluid rounded me-1" alt="admin" /> <span
								class="text-dark">Admin</span>
						</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="pages-profile.html"><i
									class="align-middle me-1" data-feather="user"></i> Profile</a> <a
									class="dropdown-item" href="#"><i class="align-middle me-1"
									data-feather="pie-chart"></i> Analytics</a>


								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="/"><i
									class="align-middle me-1" data-feather="log-out"></i>Log out</a>
							</div></li>
					</ul>
				</div>
			</nav>
			<main class="content">
				<div class="container-fluid p-0">