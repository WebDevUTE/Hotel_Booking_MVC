<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>TripFinder Admin</title>
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/admin_page/assets/img/logoadmin.svg">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/feathericon.min.css">
	<link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/style.css"> </head>

<body>
	<div class="main-wrapper">
		<%@ include file='./common/HeaderAdmin.jsp' %>
		<%@ include file ='./common/NavbarAdmin.jsp' %>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12 mt-5">
							<h3 class="page-title mt-3">Good Morning Nguyen Vinh!</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item active">Dashboard</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 col-sm-6 col-12">
						<div class="card board1 fill">
							<div class="card-body">
								<div class="dash-widget-header">
									<div>
										<h3 class="card_widget_header">${totalBooking }</h3>
										<h6 class="text-muted">Total Booking</h6> </div>
									<div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-plus">
									<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
									<circle cx="8.5" cy="7" r="4"></circle>
									<line x1="20" y1="8" x2="20" y2="14"></line>
									<line x1="23" y1="11" x2="17" y2="11"></line>
									</svg></span> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-sm-6 col-12">
						<div class="card board1 fill">
							<div class="card-body">
								<div class="dash-widget-header">
									<div>
										<h3 class="card_widget_header">${available }</h3>
										<h6 class="text-muted">Available Rooms</h6> </div>
									<div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-dollar-sign">
									<line x1="12" y1="1" x2="12" y2="23"></line>
									<path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
									</svg></span> </div>
								</div>
							</div>
						</div>
					</div>
					
					
				</div>
				<div class="row">
					<div class="col-md-12 col-lg-6">
						<div class="card card-chart">
							<div class="card-header">
								<h4 class="card-title">BOOKING ROOM EACH MONTH</h4> </div>
							<div class="card-body">
								<canvas id="line-chart" width="400" height="400"></canvas>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-lg-6">
						<div class="card card-chart">
							<div class="card-header">
								<h4 class="card-title">ROOM</h4> </div>
							<div class="card-body">
								<!-- <div id="donut-chart"></div> -->
								<canvas id="donut-chart" width="400" height="100"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex">
						<div class="card card-table flex-fill">
							<div class="card-header">
								<h4 class="card-title float-left mt-2">Booking</h4>
								<a href="allBooking" class="btn btn-primary float-right veiwbutton">View All</a>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-center">
										<thead>
											<tr>
												<th>Booking ID</th>
												<th>Name</th>
												<th>Checkin Code</th>
												<th class="text-center">Hotel Type</th>
												<th class="text-right">Phone Number</th>
											</tr>
										</thead>
									<c:forEach items='${allBookings}' var="allBookings">
										<tbody>
											<tr>
												<td class="text-nowrap">
													<div>${allBookings.booking.bookingId }</div>
												</td>
												<td class="text-nowrap">${allBookings.name }</td>
												
												<td>${allBookings.bookingUserInfoId }</td>
												<td class="text-center">${allBookings.booking.hotel.hotelName}</td>
												<td class="text-right">
													<div>${allBookings.phone }</div>
												</td>
											</tr>
										</tbody>
									</c:forEach>
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
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/raphael/raphael.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/chart.morris.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/script.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.2/chart.min.js"></script>
	<script type="text/javascript">
	const labels_1 = [
        <c:forEach var="label" items="${data}">'${label.key}', </c:forEach>
    ];
    const data_1 = {
        labels: labels_1,
        datasets: [{
            label: 'Số phòng hiện có ở mỗi khách từng quốc gia',
            data: [<c:forEach var="label" items="${data}">${label.value}, </c:forEach>],
            backgroundColor: [
                'rgb(255, 99, 132)',
                'rgb(54, 162, 235)',
                'rgb(255, 205, 86)'
              ],
              hoverOffset: 4
        }]
    };
    const config_1 = {
        type: 'doughnut',
        data: data_1,
    };
    const canvas_1 = document.getElementById('donut-chart')
    const chart_1 = new Chart(canvas_1, config_1)
    
    
    const labels_2 = [<c:forEach var="month" items="${getMonth}">'Tháng ${month.key}', </c:forEach>];
    const data_2 = {
      labels: labels_2,
      datasets: [{
        label: 'Room Each Month',
        data: [<c:forEach var="month" items="${getMonth}">${month.value}, </c:forEach>],
        fill: false,
        borderColor: 'rgb(75, 192, 192)',
        tension: 0.1
      }]
    };
    const config_2 = {
   		  type: 'line',
   		  data: data_2,
   		};
	const canvas_2 = document.getElementById('line-chart')
    const chart_2 = new Chart(canvas_2, config_2)
	</script>
</body>

</html>