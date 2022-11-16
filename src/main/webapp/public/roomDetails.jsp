<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/roomDetails.css">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Room Details</title>
</head>
<body>
    <div class="wrapper">
        <header class="header">
            <div class="container-fluid">
                <div class="header-main">
                    <%@include file = './common/navbarWithSearch.jsp' %>
                </div>
            </div>
        </header>
        <section class="background" style="
		    background-image: url(${pageContext.request.contextPath}/public/img/single-post-bg.fe05ed7c.jpg);
		    width: 100%;
		    height: 90vh;
		    background-repeat: no-repeat;
		    background-size: cover;
		    background-position: center center;
		"></section>
		
        <section class="review">
            <div class="container-fluid">
                <div class="review-main">
                    <div class="review-contain">
                        <p class="review-title">${hotelDetail.address }</p>
                        <h2 class="review-heading">${hotelDetail.hotelName }</h2>
                        <div class="rate">
                            <div class="rate-star">
                                <i class="far fa-star star-icon choose"></i>
                                <i class="far fa-star star-icon choose"></i>
                                <i class="far fa-star star-icon"></i>
                                <i class="far fa-star star-icon"></i>
                                <i class="far fa-star star-icon"></i>
                            </div>
                            <p class="rate-view">Awesome (<span>35</span>)</p>
                        </div>
                        <p class="desc">${hotelDetail.description }</p>
                        <h2 class="review-heading">Amenities</h2>
                        <div class="service-room">
                            <div class="service">
                                <i class="fas fa-wifi"></i>
                                <h3>Free Wifi</h3>
                            </div>
                            <div class="service">
                                <i class="fas fa-car"></i>
                                <h3>Free Parking</h3>
                            </div>
                            <div class="service">
                                <i class="fas fa-swimmer"></i>
                                <h3>Free Pool</h3>
                            </div>
                            <div class="service">
                                <i class="fas fa-tree"></i>
                                <h3>Air Freshener</h3>
                            </div>
                        </div>
                        <div class="location">
                            <h2>Location</h2>
                        </div>
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.023524699233!2d106.69757555045462!3d10.732668892313727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528b2747a81a3%3A0x33c1813055acb613!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBUw7RuIMSQ4bupYyBUaOG6r25n!5e0!3m2!1svi!2s!4v1663665609080!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        
                        <!-- Here Here Here Here Here Here Here Here-->
                        
                    </div>
                    <div class="price-and-date">
                        <form action="bookingHotel?hotelId=${hotelDetail.hotelId }" method="POST" class="submit-price">
                            <div class="price">
                                <h1 style="margin-bottom: 10px;color:#008489;">$${hotelDetail.price }<span style="color:black;"> / night</span></h1>
                            </div>
                            <div class="user-booking">
                                <div class="user-booking-datecheck">
                                    <h3 class="user-booking-datecheck-heading" style="margin-bottom: 10px; margin-top: 36px; color:#008489;">Dates</h3>
                                    <div class="datecheck">
                                        <input name="checkin" type="text" class="user-booking-datecheck-input_in" placeholder="Check In" onfocus="(this.type='date')" onblur="if(!this.value) this.type='text'">
                                        <input name="checkout" type="text" class="user-booking-datecheck-input_out" placeholder="Check Out" onfocus="(this.type='date')" onblur="if(!this.value) this.type='text'">
                                    </div>
                                </div>
                                <div class="user-booking-guest">
                                    <h3 class="user-booking-guest-heading" style="margin-top: 32px ; margin-bottom: 10px; color:#008489;">Guest</h3>
                                    <input name="guest" type="number" class="user-booking-guest-input" placeholder="Guest" min=0>
                                </div>
                                <div class="user-booking-room">
                                    <h3 class="user-booking-room-heading" style="margin-top: 32px ; margin-bottom: 10px; color:#008489;">Room</h3>
                                    <input name="room" type="number" class="user-booking-room-input" placeholder="Room" min=0 max=${hotelDetail.rooms}>
                                </div>
                            </div>
                            <button type="submit" class="checkRoom-btn">Book Hotel</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file='./common/footer.jsp' %>
    </div>
    <script src="${pageContext.request.contextPath}/public/js/roomDetails.js"></script>
</body>
</html>