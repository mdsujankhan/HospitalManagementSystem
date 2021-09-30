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

<link rel="stylesheet" href="/app-assets/patientHome/css/maicons.css">
.

<link rel="stylesheet" href="/app-assets/patientHome/css/bootstrap.css">

<link rel="stylesheet"
	href="/app-assets/patientHome/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet"
	href="/app-assets/patientHome/vendor/animate/animate.css">

<link rel="stylesheet" href="/app-assets/patientHome/css/theme.css">
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
							<i class="align-middle" data-feather="sliders"></i> <span
							class="align-middle">Patient's Dashboard</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/patient/getContact"> <i class="align-middle"
							data-feather="edit-3"></i> <span class="align-middle">Get
								Prescription</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="/patient/nid"> <i class="align-middle"
							data-feather="edit-3"></i> <span class="align-middle">Covid Test Report</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="pages-profile.html"> <i class="align-middle"
							data-feather="tag"></i> <span class="align-middle">Get
								Bill Voucher</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link" href="#">
							<i class="align-middle" data-feather="gift"></i> <span
							class="align-middle">Available Offers</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link" href="#">
							<i class="align-middle" data-feather="grid"></i> <span
							class="align-middle">Available Services</span>
					</a></li>


					<li class="sidebar-item"><a class="sidebar-link" href="#">
							<i class="align-middle" data-feather="message-circle"></i> <span
							class="align-middle">Chat Reception</span>
					</a></li>
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
								<div class="dropdown-menu-header">1 New Notifications</div>
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
									<div class="position-relative">1 New Messages</div>
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
												<div class="text-dark">Kazi Tuhin</div>
												<div class="text-muted small mt-1">Are You available ??.</div>
												<div class="text-muted small mt-1">10m ago</div>
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
								class="avatar img-fluid rounded me-1" alt="patient" /> <span
								class="text-dark">Patient</span>
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
			<div class="container-fluid p-0">