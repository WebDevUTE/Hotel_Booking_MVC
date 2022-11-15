<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <section class="background">
        </section>
        <section class="review">
            <div class="container-fluid">
                <div class="review-main">
                    <div class="review-contain">
                        <p class="review-title">Vi tri gan dau</p>
                        <h2 class="review-heading">Ten khach san</h2>
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
                        <p class="desc">In South Williamsburg only a few blocks inland from the East River, Marlo &Sons is a rustic respite with nice wine, good cocktails, and excellent snacking fare such as oysters, local cheese, and potato tortilla. But there are more: seasonal salads and soups, the famous brick chicken, a dimly lit space outfitted in various types of wood(this is an Andrew Tarlow restaurant, after all). In many ways.</p>
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
                            <p>Take an easy walk to the main historic sites of the city. The neighborhood is perfect for an authentic taste of Roman life, with shops, art galleries, restaurants, bars, and clubs all nearby and ready to be discovered.</p>
                            <h3 class="distance">Distance from Leonardo da Vinci International Airport</h3>
                            <p>26 mins by car without traffic</p>
                        </div>
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.023524699233!2d106.69757555045462!3d10.732668892313727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528b2747a81a3%3A0x33c1813055acb613!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBUw7RuIMSQ4bupYyBUaOG6r25n!5e0!3m2!1svi!2s!4v1663665609080!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <div class="chooseRoom">
                            <h1 class="chooseRoom-heading">
                                Choose Rooom
                            </h1>
                            <form action="" class="checkRoom">
                                <div class="user-booking-datecheck">
                                    <h3 class="user-booking-datecheck-heading">Date Check</h3>
                                    <div class="datcheck">
                                        <div class="datecheck-in">
                                            <label for="">Check in</label>
                                            <input type="date" class="user-booking-datecheck-input_in">
                                        </div>
                                        <div class="datecheck-out">
                                            <label for="">Check out</label>
                                            <input type="date" class="user-booking-datecheck-input_out">
                                        </div>
                                    </div>
                                </div>
                                <div class="user-booking-guest">
                                    <h3 class="user-booking-guest-heading">Guest</h3>
                                    <input type="number" class="user-booking-guest-input">
                                </div>
                                <div class="user-booking-room">
                                    <h3 class="user-booking-room-heading">Room</h3>
                                    <input type="number" class="user-booking-room-input">
                                </div>
                                <button type="submit" class="checkRoom-btn">Check Available</button>

                            </form>
                            <div class="resultCheckRoom">
                                <div class="room">
                                    <h1 class="room-heading">Phòng Luxury</h1>
                                    <div class="room-detail">
                                        <div class="room-image">
                                            <img src="https://cdn2.vietnambooking.com/wp-content/uploads/hotel_pro/hotel_345258/fb21e7cfb11c678866260b34492bec6e.jpg" alt="">
                                            <p><i class="fas fa-home"></i>12 m<sup>2</sup></p>
                                            <p><i class="fas fa-bed"></i>1 Giường đôi lớn</p>
                                            <p><i class="far fa-building"></i>Hướng vườn</p>
                                            <p><i class="fas fa-wifi"></i>Wifi miễn phí</p>
                                            <p><i class="fas fa-shower"></i>Vòi sen</p>
                                            <p>... Và còn rất nhiều tiện ích khác</p>
                                        </div>
                                        <div class="room-desc">
                                            <p class="room-person"><i class="fas fa-male"></i> x 2 người</p>
                                            <h2 class="room-desc-heading">Lợi ích</h2>
                                            <div class="advantages">
                                                <p><i class="fas fa-check"></i> Bao gồm bữa sáng</p>
                                                <p><i class="fas fa-check"></i> Miễn phí Internet</p>
                                                <p><i class="fas fa-check"></i> TV truyền hình cáp</p>
                                                <p><i class="fas fa-check"></i> Dọn phòng hàng ngày</p>
                                                <p><i class="fas fa-check"></i> Nước đóng chai miễn phí</p>
                                            </div>
                                            <div class="cancel"><i class="far fa-question-circle"></i> 
                                                Xem chính sách hủy phòng
                                                <div class="room-modal">Khách không đến hoặc huỷ trong vòng 1 ngày so với ngày nhận phòng, tính phí 100% giá trị đơn phòng.</div>
                                            </div>
                                            <h2 class="notice">Lưu ý: Giá phòng có thể thay đổi vào các dịp lễ tết, cuối tuần...</h2>
                                            <div class="room-price">
                                                <h2 class="room-price__detail">1,150,000 <span>/đêm</span></h2>
                                                <a href="bookingForm">Đặt ngay</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="price-and-date">
                        <!-- <form action="" class="submit-price">
                            <div class="price">
                                <h1>$162<span>/ night</span></h1>
                                <a href="#">Contact to Hotel</a>
                            </div>
                            <div class="user-booking">
                                <div class="user-booking-name">
                                    <h3 class="user-booking-name-heading">Name</h3>
                                    <input type="text" class="user-booking-name-input">
                                </div>
                                <div class="user-booking-email">
                                    <h3 class="user-booking-email-heading">Email</h3>
                                    <input type="email" class="user-booking-email-input">
                                </div>
                                <div class="user-booking-phone">
                                    <h3 class="user-booking-phone-heading">Phone number</h3>
                                    <input type="text" class="user-booking-phone-input">
                                </div>
                                <div class="user-booking-datecheck">
                                    <h3 class="user-booking-datecheck-heading">Date Check</h3>
                                    <div class="datcheck">
                                        <div class="datecheck-in">
                                            <label for="">Check in</label>
                                            <input type="date" class="user-booking-datecheck-input_in">
                                        </div>
                                        <div class="datecheck-out">
                                            <label for="">Check out</label>
                                            <input type="date" class="user-booking-datecheck-input_out">
                                        </div>
                                    </div>
                                </div>
                                <div class="user-booking-guest">
                                    <h3 class="user-booking-guest-heading">Guest</h3>
                                    <input type="number" class="user-booking-guest-input">
                                </div>
                                <div class="user-booking-room">
                                    <h3 class="user-booking-room-heading">Room</h3>
                                    <input type="number" class="user-booking-room-input">
                                </div>
                            </div>
                        </form> -->
                    </div>
                </div>
            </div>
        </section>
        <%@include file='./common/footer.jsp' %>
    </div>
    <script src="${pageContext.request.contextPath}/public/js/roomDetails.js"></script>
</body>
</html>