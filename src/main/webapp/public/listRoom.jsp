<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/listRoom.css">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Listing Room</title>
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
        <section class="all-room">
            <div class="container-fluid">
                <div class="room-main">
                	<c:forEach items='${ listingHotels}' var="listingHotels">
	                	<div class="place">
	                        <img src='${listingHotels.imageUrl}' alt="" class="place-img"/>
	                        <div class="place-content">
	                            <span class="address">${listingHotels.address }</span>
	                            <a href="hotelDetails?hotelId=${listingHotels.hotelId}">${listingHotels.hotelName}</a>
	                            <span class="price">$${listingHotels.price }.00/Night</span>
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
	                                <a href="hotelDetails?hotelId=${listingHotels.hotelId}">
	                                    <i class="fas fa-external-link-alt view-icon"></i>
	                                    View Details
	                                </a>
	                            </div>
	                        </div>
	                        <i class="fas fa-heart like-icon"></i> 
	                    </div>
                	</c:forEach>
                	
                </div>
                <c:if test="${message eq true }">
                	<span style="font-size: 28px; font-weight: 500; margin-bottom: 50px; display:block;">Could not find suitable hotels. Please find others!</span>
               		<section class="hero" style="background-color: #008489;">
	                    <div class="container-fluid">
	                        <div class="hero-main">
	                            <h1>Latest reviews. Lowest prices.</h1>
	                            <p>Compares prices from 200+ booking sites to help you find the lowest price on the right hotel for you.</p>
	                            <form class="hero-form" action="listRoom" method="get">
	                                <div class="hero-form-input">
	                                    <div class="hero-form-item">
	                                        <i class="fas fa-map-marker-alt" class="hero-form-icon"></i>
	                                        <div class="hero-form-signin">
	                                            <input name="destination" type="text" placeholder="Search 'Lodon, England'">
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
                </c:if>
            </div>
        </section>
    </div>
    <script src="${pageContext.request.contextPath}/public/js/listRoom.js"></script>
</body>
</html>