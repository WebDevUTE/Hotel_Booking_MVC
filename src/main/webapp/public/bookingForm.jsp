<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.bookingForm.css">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Room Details</title>
</head>
<body>
    <div class="wrapper">
        <header class="header">
            <div class="container-fluid">
                <div class="header-main">
                    <div class="header-menu">
                        <div class="header-content">
                            <img src="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" alt="logo" class="header-logo">
                            <h3>TripFinder.</h3>
                        </div>
                        <%@include file ='./common/searchRoom.jsp'%>
                    </div>
                    <div class="header-navbar">
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="home" class="menu-item-link">Hotels</a>
                            </li>
                            <li class="menu-item">
                                <a href="listRoom" class="menu-item-link">Listing</a>
                            </li>
                            <li class="menu-item">
                                <a href="privacy" class="menu-item-link">Privacy</a>
                            </li>
                        </ul>
                        <ul class="sign">
                            <li class="sign-item">
                                <a href="login" class="sign-item-link">Sign in</a>
                            </li>
                            <li class="sign-item">
                                <a href="signup" class="sign-item-link btn">Sign up</a>
                            </li>
                        </ul>
                        <ul class="sign-success disable-user">
                            <li class="sign-success-img">
                                <img src="${pageContext.request.contextPath}/public/img/cairo.jpg" alt="">
                            </li>
                            <li class="sign-success-container disable-user">
                                <ul class="user-panner">
                                    <li class="user-panner-item">
                                        <a href="" class="user-panner-item-link">Account Settings</a>
                                    </li>
                                    <li class="user-panner-item">
                                        <a href="" class="user-panner-item-link">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <section class="payRoom">
            <div class="container-fluid">
                <div class="payRoom-main">
                    <div class="payRoom-confirm">
                        <h1 class="payRoom-heading">Điền thông tin liên hệ</h1>
                        <div class="payRoom-personal">
                            <h1 class="payRoom-personID">Thông tin khách hàng</h1>
                            <div class="payRoom-attention">Tên khách phải khớp với giấy tờ tùy thân hợp lệ sẽ dùng để nhận phòng.<i class="far fa-question-circle"></i>
                                <ul class="payRoom-modal">
                                    <li>Vui lòng nhập thông tin cho ít nhất một khách.</li>
                                    <li>Tên khách phải khớp với giấy tờ tùy thân hợp lệ sẽ dùng để nhận phòng.</li>
                                    <li>Vui lòng nhập tên đầy đủ của bạn theo định dạng sau, để một khoảng trắng giữa tên chính và tên đệm.</li>
                                    <li>Các khách dưới 18 tuổi không thể ở một mình.</li>
                                </ul>
                            </div>
                            <form action="" class="payRoom-submit">
                                <label for="">Tên</label>
                                <input type="text" required>
                                <label for="">Họ</label>
                                <input type="text" required>
                                <label for="">Email</label>
                                <input type="email" name="" id="" required>
                                <label for="">Số điện thoại</label>
                                <input type="text" name="" id="" required>
                                <div class="btn-submit">
                                    <h2>Bằng cách gửi đặt phòng này, tôi thừa nhận là tôi đã đọc và đồng ý với <a href="../privacy/privacy.html" target="_blank">Điều Kiện & Điều Khoản Sử Dụng</a></h2>
                                    <button type="submit" class="submitBtn">Xác Nhận Đặt Phòng</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="payRoom-detail">
                        <h1 class="payRoom-heading">Thông tin đặt phòng</h1>
                        <div class="payRoom-detail-payment">
                            <div class="payRoom-detail-img">
                                <img src="https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="">
                                <div class="payRoom-detail-desc">
                                    <h3>Tên khách sạn</h3>
                                    <p>Loại Phòng</p>
                                </div>
                            </div>
                            <div class="payRoom-date">
                                <div class="payRoom-checkin">
                                    <span class="date">Ngày nhận phòng</span>
                                    <span>07/10/2022</span>
                                </div>
                                <div class="payRoom-checkout">
                                    <span class="date">Ngày trả phòng</span>
                                    <span>08/10/2022</span>
                                </div>
                                <div class="quantity-room">
                                    <span>Số khách phòng</span>
                                    <span>1 khách, 1 phòng</span>
                                </div>
                                <div class="price-per-night">
                                    <span>1 phòng x 6 đêm</span>
                                    <span>18,192,000 VND</span>
                                </div>
                            </div>
                            <div class="payRoom-total">
                                <span class="total-heading">Tổng Tiền</span>
                                <span class="price">18,192,000 VND</span>
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