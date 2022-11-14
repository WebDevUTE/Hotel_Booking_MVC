<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.listRoom.css">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Listing Room</title>
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
        <section class="search-card">
            <div class="container-fluid">
                <div class="search-card-main">
                    <form class="filter-btn">
                        <div class="amenities box">
                            <div class="show">
                                <div class="btn-show">Amenities <span id="number-chooseConvi"></span></div>
                                
                                <div class="modal">
                                    <div class="group">
                                        <input type="checkbox" id="free-wifi" class="convenient">
                                        <label for="free-wifi">Free Wifi</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="free-parking" class="convenient">
                                        <label for="free-parking">Free Parking</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="breakfast" class="convenient">
                                        <label for="breakfast">Breakfast</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="pool" class="convenient"> 
                                        <label for="pool">Pool</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="air-conditional" class="convenient">
                                        <label for="air-conditional">Air Conditional</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="hot-shower" class="convenient">
                                        <label for="hot-shower">Hot Shower</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="TV" class="convenient">
                                        <label for="TV">Free Wifi</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="property box">
                            <div class="show">
                                <div class="btn-show">Property Type <span id="number-chooseType"></span></div>
                                
                                <div class="modal">
                                    <div class="group">
                                        <input type="checkbox" id="villa" class="type-of-place">
                                        <label for="villa">Villa</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="hotel" class="type-of-place">
                                        <label for="hotel">Hotel</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="resort" class="type-of-place">
                                        <label for="resort">Resort</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="cottage" class="type-of-place">
                                        <label for="cottage">Cottage</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="duplex" class="type-of-place">
                                        <label for="duplex">Duplex</label>
                                    </div>
                                    <div class="group">
                                        <input type="checkbox" id="landscape" class="type-of-place">
                                        <label for="landscape">Landscape</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="date box">
                            <div class="show">
                                <div class="btn-show">Date</div>
                                <div class="modal">
                                    <div class="group" style="flex-direction: column;">
                                        <label>Start date</label>
                                        <input type="date">
                                    </div>
                                    <div class="group" style="flex-direction: column;">
                                        <label>End date</label>
                                        <input type="date">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="price box">
                            <div class="show">
                                <div class="btn-show">Price</div>
                                <div class="modal">
                                    <div class="group">
                                        <label>Price</label>
                                        <input type="number" min="0" max="100000000">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="room box">
                            <div class="show">
                                <div class="btn-show">Room</div>
                                <div class="modal">
                                    <div class="group">
                                        <label>Room</label>
                                        <input type="number" min="0" max="100">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="people box">
                            <div class="show">
                                <div class="btn-show">People</div>
                                <div class="modal">
                                    <div class="group">
                                        <label>People</label>
                                        <input type="number" min="0" max="100">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="reset box">
                            <div class="show">
                                <button class="btn-reset" type="reset">Reset</button>
                            </div>
                        </div>
                        <div class="submit box">
                            <div class="show">
                                <button class="btn-submit" type="submit">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <section class="all-room">
            <div class="container-fluid">
                <div class="room-main">
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                    <div class="place">
                        <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                        <div class="place-content">
                            <span class="address">Địa chỉ</span>
                            <a href="">Tên hotel</a>
                            <span class="price">$316.00/Night - Giá phòng 1 đêm (lấy giá thấp nhất)</span>
                            <div class="assess">
                                <div class="star">
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                    <i class="far fa-star icon-star"></i>
                                </div>
                                <div class="comment">Bad (12)</div>
                            </div>
                            <div class="place-view">
                                <a href="roomDetails">
                                    <i class="fas fa-external-link-alt view-icon"></i>
                                    View Details
                                </a>
                            </div>
                        </div>
                        <i class="fas fa-heart like-icon"></i> 
                    </div>
                </div>
                <div class="load">
                    <button class="btn-load">Load more</button>
                </div>
            </div>
        </section>
    </div>
    <script src="${pageContext.request.contextPath}/public/js/listRoom.js"></script>
</body>
</html>