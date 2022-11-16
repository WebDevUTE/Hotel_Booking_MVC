<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <form action="" class="payRoom-submit">
                                <label for="">First Name</label>
                                <input type="text" required>
                                <label for="">Last Name</label>
                                <input type="text" required>
                                <label for="">Email</label>
                                <input type="email" name="" id="" required>
                                <label for="">Phone Number</label>
                                <input type="text" name="" id="" required>
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
                                <img src="https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="">
                                <div class="payRoom-detail-desc">
                                    <h3>Hotel Name</h3>
                                    <p>Type of room</p>
                                </div>
                            </div>
                            <div class="payRoom-date">
                                <div class="payRoom-checkin">
                                    <span class="date">Checkin Date</span>
                                    <span>07/10/2022</span>
                                </div>
                                <div class="payRoom-checkout">
                                    <span class="date">Checkout Date</span>
                                    <span>08/10/2022</span>
                                </div>
                                <div class="quantity-room">
                                    <span>Number of guests</span>
                                    <span>1 khách, 1 phòng</span>
                                </div>
                                <div class="price-per-night">
                                    <span>1 phòng x 6 đêm</span>
                                    <span>18,192,000 VND</span>
                                </div>
                            </div>
                            <div class="payRoom-total">
                                <span class="total-heading">Total</span>
                                <span class="price">$350</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="${pageContext.request.contextPath}/public/js/bookingForm.js"></script>
</body>
</html>