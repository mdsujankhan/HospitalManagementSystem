<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/app-assets/css/demo_1.css" />
<link rel="stylesheet" href="/app-assets/css/style_1.css">


<!-- <header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1>Employee Profile</h1>
            </div>
        </div>
    </div>
</header> -->

<section>
	<div class="rt-container">
		<div class="col-rt-12">
			<div class="Scriptcontent">
				<div class="student-profile py-4">
					<div class="container">
						<div class="row">
							<div class="col-lg-4">
								<div class="card shadow-sm">
									<div class="card-header bg-transparent text-center">
										<img class="profile_img" src="${u.photo}" alt="student dp">
										<h3>${u.name}</h3>
									</div>
									<div class="card-body">
										<p class="mb-0">
											<strong class="pr-1">Account No:</strong>${u.accountNo}</p>
										<p class="mb-0">
											<strong class="pr-1">Contact:</strong>${u.contact}</p>
										<p class="mb-0">
											<strong class="pr-1">Address:</strong>${u.address}</p>
									</div>
								</div>
							</div>
							<div class="col-lg-8">
								<div class="card shadow-sm">
									<div class="card-header bg-transparent border-0">
										<h3 class="mb-0">
											<i class="far fa-clone pr-1"></i>General Information
										</h3>
									</div>
									<div class="card-body pt-0">
										<table class="table table-bordered">
											<tr>
												<th width="30%">Role</th>
												<td width="2%">:</td>
												<td>${u.role}</td>
											</tr>
											<tr>
												<th width="30%">Date Of Birth</th>
												<td width="2%">:</td>
												<td>${u.dateOfBirth}</td>
											</tr>
											<tr>
												<th width="30%">Gender</th>
												<td width="2%">:</td>
												<td>${u.gender}</td>
											</tr>
											<tr>
												<th width="30%">Email</th>
												<td width="2%">:</td>
												<td>${u.email}</td>
											</tr>
											<tr>
												<th width="30%">blood</th>
												<td width="2%">:</td>
												<td>${u.bloodGroup}</td>
											</tr>
										</table>
									</div>
								</div>
								<div style="height: 26px"></div>
								<div class="card shadow-sm">
									<div class="card-header bg-transparent border-0">
										<h3 class="mb-0">
											<i class="far fa-clone pr-1"></i>Code of Conduct
										</h3>
									</div>
									<div class="card-body pt-0">
										<p>An employee code of conduct is a legal document that
											provides guidelines on acceptable behaviors of individuals in
											an organization.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />