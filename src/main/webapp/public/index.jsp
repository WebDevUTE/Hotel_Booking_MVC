<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.home.css">
    <title>TripFinder Home</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/vendor/slick-1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/vendor/slick-1.8.1/slick/slick-theme.css"/>
</head>
<body>
    <div class="wrapper position">
        <div class="slider">
            <div class="slides">
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                
                <div class="slide first">
                    <img src="${pageContext.request.contextPath}/public/img/1.3bd6d5f8.jpg" alt="">
                </div>
                <div class="slide second">
                    <img src="${pageContext.request.contextPath}/public/img/2.7ac6e294.jpg" alt="">
                </div>
                <div class="slide third">
                    <img src="${pageContext.request.contextPath}/public/img/3.b9923e48.jpg" alt="">
                </div>

                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                </div>
            </div>
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
            </div>
        </div>
        <header class="header">
            <div class="container-fluid">
                <div class="header-main wrapper">
                    <div class="header-menu">
                        <img src="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" alt="logo" class="header-logo">
                        <h3>TripFinder.</h3>
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
                        <c:if test = "${sessionScope.user==null}">                        
	                        <ul class="sign">
	                            <li class="sign-item">
	                                <a href="login" class="sign-item-link">Sign in</a>
	                            </li>
	                            <li class="sign-item">
	                                <a href="signup" class="sign-item-link btn">Sign up</a>
	                            </li>
	                        </ul>
                        </c:if>
                        <c:if test = "${sessionScope.user!=null }">                        	
	                        <ul class="sign-success">
	                            <li class="sign-success-img">
	                                <img src="${pageContext.request.contextPath}/public/img/cairo.jpg" alt="">
	                            </li>
	                            <li class="sign-success-container disable-user">
	                                <ul class="user-panner">
	                                    <li class="user-panner-item">
	                                        <a href="" class="user-panner-item-link">Account Settings</a>
	                                    </li>
	                                    <li class="user-panner-item">
	                                        <a href="logout" class="user-panner-item-link">Logout</a>
	                                    </li>
	                                </ul>
	                            </li>
	                        </ul>
                        </c:if>
                    </div>
                </div>
                <section class="hero">
                    <div class="container-fluid">
                        <div class="hero-main">
                            <h1>Latest reviews. Lowest prices.</h1>
                            <p>compares prices from 200+ booking sites to help you find the lowest price on the right hotel for you.</p>
                            <form class="hero-form">
                                <div class="hero-form-input">
                                    <div class="hero-form-item">
                                        <i class="fas fa-map-marker-alt" class="hero-form-icon"></i>
                                        <div class="hero-form-signin">
                                            <input type="text" placeholder="Search 'Thailand, Asia'">
                                        </div>
                                    </div>
                                    <div class="hero-form-item">
                                        <i class="fas fa-calendar" class="hero-form-icon"></i>
                                        <div class="hero-form-signin">
                                            <input type="date">
                                            <span>-</span>
                                            <input type="date">
                                        </div>
                                    </div>
                                    <div class="hero-form-item">
                                        <i class="fas fa-user" class="hero-form-icon"></i>
                                        <div class="hero-form-signin">
                                            <label for="">Room</label>
                                            <input type="number">
                                            <span>-</span>
                                            <label for="">Guest</label>
                                            <input type="number">
                                        </div>
                                    </div>
                                </div>
                                <button type="submit">Find hotel</button>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </header>
        <section class="explore">
            <div class="container-fluid">
                <div class="explore-main">
                    <div class="explore-header">
                        <h1>Explore Destinations</h1>
                        <a href="listRoom" class="explore-link">Show all</a>
                    </div>
                    <div class="explore-slides">
                        <div class="explore-slider">
                            <img src="http://s3.amazonaws.com/redqteam.com/tripfinder-images/london.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="listRoom"  class="explore-heading">London</a >
                                <h3 class="explore-number-hotel">49863 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="${pageContext.request.contextPath}/public/img/newyork.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="listRoom"  class="explore-heading">New York</a >
                                <h3 class="explore-number-hotel">19236 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="${pageContext.request.contextPath}/public/img/paris.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="listRoom"  class="explore-heading">Paris</a >
                                <h3 class="explore-number-hotel">23494 Hotels</h3>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <section class="travel">
            <div class="container-fluid">
                <div class="travel-main">
                    <div class="travel-header">
                        <h1>Travelers’ Choice: Top hotels</h1>
                        <a href="listRoom" class="travel-link">Show all</a>
                    </div>
                    <div class="travel-place">
                        <div class="place">
                            <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-10_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-12_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-13_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-14_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-15_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-1_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-2_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                </div>
            </div>
        </section>
        <section class="rate">
            <div class="container-fluid">
                <div class="rate-main">
                    <div class="rate-header">
                        <h1>Travelers’ Choice: Top hotels</h1>
                        <a href="listRoom" class="rate-link">Show all</a>
                    </div>
                    <div class="rate-place">
                        <div class="place">
                            <img src="${pageContext.request.contextPath}/public/img/hotel-11_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-10_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-12_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-13_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-14_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-15_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-1_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                            <img src="${pageContext.request.contextPath}/public/img/hotel-2_thumb.jpg" alt="" class="place-img">
                            <div class="place-content">
                                <span class="address">Địa chỉ</span>
                                <a href="">Tên Hotel</a>
                                <span class="price">$316.00/Night - Giá tiền 1 đêm (lấy giá thấp nhất)</span>
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
                </div>
            </div>
        </section>
        <%@ include file='./common/footer.jsp' %>
    </div>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/vendor/slick-1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
        $('.explore-slides').slick({
                infinite: true,
                slidesToShow: 3,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,
            });
    </script>
    <script src="${pageContext.request.contextPath}/public/js/home.js"></script>
</body>
</html>