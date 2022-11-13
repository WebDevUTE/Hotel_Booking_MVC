<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="./img/logo-alt.980da429.svg" type="image/x-icon">
    <link rel="stylesheet" href="./css/style.home.css">
    <title>TripFinder Home</title>
    <link rel="stylesheet" type="text/css" href="./vendor/slick-1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="./vendor/slick-1.8.1/slick/slick-theme.css"/>
</head>
<body>
    <div class="wrapper position">
        <div class="slider">
            <div class="slides">
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                
                <div class="slide first">
                    <img src="./img/1.3bd6d5f8.jpg" alt="">
                </div>
                <div class="slide second">
                    <img src="./img/2.7ac6e294.jpg" alt="">
                </div>
                <div class="slide third">
                    <img src="./img/3.b9923e48.jpg" alt="">
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
                        <img src="./img/logo-alt.980da429.svg" alt="logo" class="header-logo">
                        <h3>TripFinder.</h3>
                    </div>
                    <div class="header-navbar">
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="./index.jsp" class="menu-item-link">Hotels</a>
                            </li>
                            <li class="menu-item">
                                <a href="./pages/list/listRoom.html" class="menu-item-link">Listing</a>
                            </li>
                            <li class="menu-item">
                                <a href="./pages/privacy/privacy.html" class="menu-item-link">Privacy</a>
                            </li>
                        </ul>
                        <ul class="sign">
                            <li class="sign-item">
                                <a href="./sign_in/index.html" class="sign-item-link">Sign in</a>
                            </li>
                            <li class="sign-item">
                                <a href="./sign_in/signup.html" class="sign-item-link btn">Sign up</a>
                            </li>
                        </ul>
                        <ul class="sign-success disable-user">
                            <li class="sign-success-img">
                                <img src="./Imgs/cairo.jpg" alt="">
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
                        <a href="./pages/list/listRoom.html" class="explore-link">Show all</a>
                    </div>
                    <div class="explore-slides">
                        <div class="explore-slider">
                            <img src="./img/london.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="./pages/list/listRoom.html"  class="explore-heading">London</a >
                                <h3 class="explore-number-hotel">49863 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="./img/newyork.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="./pages/list/listRoom.html"  class="explore-heading">New York</a >
                                <h3 class="explore-number-hotel">19236 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="./img/paris.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="./pages/list/listRoom.html"  class="explore-heading">Paris</a >
                                <h3 class="explore-number-hotel">23494 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="./img/prague.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="./pages/list/listRoom.html"  class="explore-heading">Prague</a >
                                <h3 class="explore-number-hotel">3 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="./img/rome.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="./pages/list/listRoom.html"  class="explore-heading">Roma</a >
                                <h3 class="explore-number-hotel">11452 Hotels</h3>
                            </div>
                        </div>
                        <div class="explore-slider">
                            <img src="./img/sydney.jpg" alt="">
                            <div class="blank"></div>
                            <div class="explore-content">
                                <a href="./pages/list/listRoom.html"  class="explore-heading">Sydney</a >
                                <h3 class="explore-number-hotel">85426 Hotels</h3>
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
                        <a href="./pages/list/listRoom.html" class="travel-link">Show all</a>
                    </div>
                    <div class="travel-place">
                        <div class="place">
                            <img src="./img/hotel-11_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-10_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-12_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-13_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-14_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-15_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-1_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-2_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
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
                        <a href="./pages/list/listRoom.html" class="rate-link">Show all</a>
                    </div>
                    <div class="rate-place">
                        <div class="place">
                            <img src="./img/hotel-11_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-10_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-12_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-13_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-14_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-15_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-1_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
                                        <i class="fas fa-external-link-alt view-icon"></i>
                                        View Details
                                    </a>
                                </div>
                            </div>
                            <i class="fas fa-heart like-icon"></i> 
                        </div>
                        <div class="place">
                            <img src="./img/hotel-2_thumb.jpg" alt="" class="place-img">
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
                                    <a href="./pages/roomDetails/roomDetails.html">
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
        <section class="footer">
            <div class="container-fluid">
                <div class="footer-main">
                    <div class="logo">
                        <img src="./img/logo-alt.980da429.svg" alt="">
                        <h1>TripFinder.</h1>
                    </div>
                    <ul class="menu-footer">
                        <li class="menu-footer-item">
                            <a href="./index.html" class="menu-footer-item-link">Home</a>
                        </li>
                        <li class="menu-footer-item">
                            <a href="./pages/list/listRoom.html" class="menu-footer-item-link">Listing</a>
                        </li>
                        <li class="menu-footer-item">
                            <a href="./pages/privacy/privacy.html" class="menu-footer-item-link">Privacy</a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="./vendor/slick-1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
        $('.explore-slides').slick({
                infinite: true,
                slidesToShow: 3,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2000,
            });
    </script>
    <script src="./js/home.js"></script>
</body>
</html>