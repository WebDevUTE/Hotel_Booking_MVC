<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/bookingForm.css">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Booking Form</title>
</head>
<body>
    <div class="wrapper">
        <header class="header">
            <div class="container-fluid">
                <div class="header-main">
                    <%@include file='./common/navbarWithSearch.jsp' %>
                </div>
            </div>
        </header>
        <section class="payRoom">
            <div class="container-fluid">
                <div class="payRoom-main">
                    <div class="payRoom-confirm">
                        <h1 class="payRoom-heading">Fill in contact information</h1>
                        <div class="payRoom-personal">
                            <h1 class="payRoom-personID">Customer Information</h1>
                            <div class="payRoom-attention">Guest's name must match the valid identification that will be used for check-in.<i class="far fa-question-circle"></i>
                                <ul class="payRoom-modal">
                                    <li>Please enter information for at least one customer.</li>
                                    <li>Please enter your full name in the following format, leaving a space between your first and middle name.</li>
                                    <li>Customers under the age of 18 cannot stay alone.</li>
                                </ul>
                            </div>
                            <form action="finishBooking?bookingId=${newBooking.bookingId}" method = "POST"  class="payRoom-submit">
                                <label for="firstName">First Name</label>
                                <input name="firstName" type="text" required>
                                <label for="lastName">Last Name</label>
                                <input name="lastName" type="text" required>
                                <label for="email">Email</label>
                                <input name="email" type="email" required>
                                <label for="phone">Phone Number</label>
                                <input name="phone" type="text" required>
                                <div class="btn-submit">
                                    <h2>By submitting this reservation, I acknowledge that I have read and agree to <a href="privacy" target="_blank">TripFinder Privacy</a></h2>
                                    <button type="submit" class="submitBtn">Book Hotel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="payRoom-detail">
                        <h1 class="payRoom-heading">Booking information</h1>
                        <div class="payRoom-detail-payment">
                            <div class="payRoom-detail-img">
                                <img src="${hotel.imageUrl }" alt="">
                                <div class="payRoom-detail-desc">
                                    <h3>${hotel.hotelName }</h3>
                                </div>
                            </div>
                            <div class="payRoom-date">
                                <div class="payRoom-checkin">
                                    <span class="date">Checkin Date</span>
                                    <span><fmt:formatDate pattern  = "dd-MM-yyyy" value = "${newBooking.checkinDate }" /></span>
                                </div>
                                <div class="payRoom-checkout">
                                    <span class="date">Checkout Date</span>
                                    <span><fmt:formatDate pattern  = "dd-MM-yyyy" value = "${newBooking.checkoutDate }" /></span>
                                </div>
                                <div class="quantity-room">
                                    <span>Number of guests and rooms</span>
                                    <span>${newBooking.guest } Guests, ${newBooking.rooms} Rooms</span>
                                </div>
                                <div class="price-per-night">
                                    <span id="roomPrice">
                                    <%-- ${newBooking.rooms } rooms x ${newBooking.checkoutDate - newBooking.checkinDate} nights --%>
                                    </span>
                                    <span id="totalRoomPrice">
                                    <%-- ${hotel.price * (newBooking.checkoutDate - newBooking.checkinDate)} --%>
                                    </span>
                                </div>
                            </div>
                            <div class="payRoom-total">
                                <span class="total-heading">Total</span>
                                <span class="price"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/public/js/bookingForm.js"></script>
    <script>
    	const checkin = "${newBooking.checkinDate}"
    	const checkout = "${newBooking.checkoutDate}"
		const rooms = ${newBooking.rooms}
    	const price = ${hotel.price}
    	const arraycheckin = checkin.split(" ")
    	arraycheckin.splice(3,2)
    	console.log(arraycheckin.join(" "))
    	let date1 = new Date(arraycheckin)
    	console.log(date1)

    	const arraycheckout = checkout.split(" ")
    	arraycheckout.splice(3,2)
    	console.log(arraycheckout.join(" "))
    	let date2 = new Date(arraycheckout)
    	console.log(date2)
    	var Difference_In_Time = date2.getTime() - date1.getTime();
    	var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
    	
    	$(document).ready(function(){
    		$("#roomPrice").text(rooms + " " + "rooms x "+ Difference_In_Days + " nights");
    		$("#totalRoomPrice").text("$"+price*Difference_In_Days*rooms)
    		$(".price").text("$"+price*Difference_In_Days*rooms)
    	})
    </script>
</body>
</html>