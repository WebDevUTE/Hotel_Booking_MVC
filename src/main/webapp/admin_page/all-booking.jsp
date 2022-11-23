<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>TripFinder Admin</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/admin_page/assets/img/logoadmin.svg">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/datatables/datatables.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/css/feathericon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/css/style.css">
</head>

<body>
	<div class="main-wrapper">
		<%@include file='./common/HeaderAdmin.jsp'%>
		<%@include file='./common/NavbarAdmin.jsp'%>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<div class="mt-5">
								<h4 class="card-title float-left mt-2">All Bookings</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body booking_card">
								<div class="table-responsive">
									<table
										class="datatable table table-stripped table table-hover table-center mb-0">
										<thead>
											<tr>
												<th>Booking ID</th>
												<th>Name</th>
												<th>Hotel Name</th>
												<th>Checkin Date</th>
												<th>Checkout Date</th>
												<th>Ph.Number</th>
												<!-- <th>Status</th> -->
												<th class="text-right">Actions</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items='${allBookings}' var="allBookings">
												<tr>
													<td>${allBookings.booking.bookingId }</td>
													<td>
														<h2 class="table-avatar">
															<div class="avatar avatar-sm mr-2">
																<img class="avatar-img rounded-circle"
																	src="${pageContext.request.contextPath}/admin_page/assets/img/profiles/avatar-03.jpg"
																	alt="User Image">
															</div>
															<span style="font-size: 15px;">${allBookings.name }</span>
														</h2>
													</td>
													<td>${allBookings.booking.hotel.hotelName }</td>
													<td>${allBookings.booking.checkinDate }</td>
													<td>${allBookings.booking.checkoutDate }</td>
													<td>${allBookings.phone }</td>
													<td class="text-right">
														<div class="dropdown dropdown-action">
															<a href="#" class="action-icon dropdown-toggle"
																data-toggle="dropdown" data-id="${allBookings.booking.bookingId} aria-expanded="false"><i
																class="fas fa-ellipsis-v ellipse_color"></i></a>
															<div class="dropdown-menu dropdown-menu-right">
																<form action="checkout?bookingId=${allBookings.booking.bookingId }" method="post">
																		<button type="submit" class="dropdown-item" 
																		class="fas fa-pencil-alt m-r-5">Checkout</button>
																</form>
														
															</div>
														</div>
													</td>
												</tr>
												
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script	src="${pageContext.request.contextPath}/admin_page/assets/js/jquery-3.5.1.min.js"></script>
	<script	src="${pageContext.request.contextPath}/admin_page/assets/js/popper.min.js"></script>
	<script	src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap.min.js"></script>
	<script	src="${pageContext.request.contextPath}/admin_page/assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script	src="${pageContext.request.contextPath}/admin_page/assets/plugins/datatables/datatables.min.js"></script>
	<script	src="${pageContext.request.contextPath}/admin_page/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/raphael/raphael.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/script.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
	<script>
	 document.addEventListener('DOMContentLoaded', function() {
	        var patientIndex  
	        var saveForm = document.forms['checkout-form']
	        const btnSave = document.getElementById('btn-checkout')
	        $('#delete_asset').on('show.bs.modal', function (event) {
	        var button = $(event.relatedTarget)
	        patientIndex = button.data('id')
	})
	        btnSave.onclick = function() {
	          saveForm.action = '/checkout?bookingId=' + patientIndex
	          saveForm.submit()
	        }
	    })
	</script>
</body>

</html>