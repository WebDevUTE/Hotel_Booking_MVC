<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>TripFinder Admin</title>
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/admin_page/assets/img/favicon.png">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/feathericon.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/style.css"> </head>

<body>
	<div class="main-wrapper">
		<%@include file='./common/HeaderAdmin.jsp' %>
		<%@include file='./common/NavbarAdmin.jsp' %>
		
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header mt-5">
					<div class="row">
						<div class="col">
							<h3 class="page-title">Profile</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
								<li class="breadcrumb-item active">Profile</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="profile-header">
							<div class="row align-items-center">
								<div class="col-auto profile-image">
									<a href="#"> <img class="rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/admin_page/assets/img/profiles/avatar-02.jpg"> </a>
								</div>
								<div class="col ml-md-n2 profile-user-info">
									<h4 class="user-name mb-3">Nguyen Cao Hong Vinh</h4>
									<h6 class="text-muted mt-1">Admin TripFinder</h6>
									<div class="user-Location mt-1"><i class="fas fa-map-marker-alt"></i> Thu Duc, Ho Chi Minh City</div>
									<div class="about-text">Admin of TripFinder manage accounts, booking and can edit hotel</div>
								</div>
							</div>
						</div>
						<div class="tab-content profile-tab-cont">
							<div class="tab-pane fade show active" id="per_details_tab">
								<div class="row">
									<div class="col-lg-12">
										<div class="card">
											<div class="card-body">
												<h5 class="card-title d-flex justify-content-between">
													<span>Personal Details</span>
													</h5>
												<div class="row mt-5">
													<p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Name</p>
													<p class="col-sm-9">Nguyen Cao Hong Vinh</p>
												</div>
												<div class="row">
													<p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Date of Birth</p>
													<p class="col-sm-9">19 May 2002</p>
												</div>
												<div class="row">
													<p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Email ID </p>
													<p class="col-sm-9">vinhnguyen19052002@gmail.com</p>
												</div>
												<div class="row">
													<p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Mobile</p>
													<p class="col-sm-9">0916272466</p>
												</div>
												<div class="row">
													<p class="col-sm-3 text-sm-right mb-0">Address</p>
													<p class="col-sm-9 mb-0">5/6/5 Le Van Chi Street,
														Linh Trung ward,
														Thu Duc city,
														Ho Chi Minh city.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/select2.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/script.js"></script>
</body>

</html>