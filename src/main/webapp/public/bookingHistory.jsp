<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/bookingHistory.css">
<script src="https://kit.fontawesome.com/476aa9aedb.js"
	crossorigin="anonymous"></script>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg"
	type="image/x-icon">
<title>Booking History</title>
</head>
<body>
	<div class="wrapper">
		<header class="header">
			<div class="container-fluid">
				<div class="header-main">
					<%@include file='./common/navbarWithSearch.jsp'%>
				</div>
			</div>
		</header>
		<section class="checkBook">
				<div class="container-fluid">
					<h1 class="checkBook-heading">Booking History</h1>
					<c:forEach items='${bookingHistory}' var="bookingHistory">
					<div class="payRoom-detail">
						<div class="payRoom-detail-desc" style="margin-bottom: 20px;">
							<a href="hotelDetails?hotelId=${bookingHistory.booking.hotel.hotelId}">${bookingHistory.booking.hotel.hotelName}</a>
						</div>
						<div class="payRoom-detail-payment">
							<div class="payRoom-detail-img">
							<a href="hotelDetails?hotelId=${bookingHistory.booking.hotel.hotelId}">
								<img src="${bookingHistory.booking.hotel.imageUrl}" alt="">
							</a>
							</div>
							<div class="payRoom-date">
								<div class="payRoom-user">
									<span>Name</span> <span>${bookingHistory.name}</span>
								</div>
								<div class="payRoom-checkin">
									<span class="date">Checkin Date</span> <span>${bookingHistory.booking.checkinDate}</span>
								</div>
								<div class="payRoom-checkout">
									<span class="date">Checkout Date</span> <span>${bookingHistory.booking.checkoutDate}</span>
								</div>
								<div class="quantity-room">
									<span>Guests and Rooms</span> <span>${bookingHistory.booking.guest} Guest, ${bookingHistory.booking.rooms} Rooms</span>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
		</section>
	</div>
	<script
		src="${pageContext.request.contextPath}/public/js/userCheckBooking.js"></script>
</body>
</html>