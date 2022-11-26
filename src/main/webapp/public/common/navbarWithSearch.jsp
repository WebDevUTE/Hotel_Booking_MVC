<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header-menu">
<div class="header-content">
    <img src="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" alt="logo" class="header-logo">
    <h3>TripFinder.</h3>
</div>
	<%@include file ='./searchRoom.jsp'%>
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
    <c:if test="${sessionScope.user==null }">    
	    <ul class="sign">
	        <li class="sign-item">
	            <a href="login" class="sign-item-link">Sign in</a>
	        </li>
	        <li class="sign-item">
	            <a href="signup" class="sign-item-link btn">Sign up</a>
	        </li>
	    </ul>
    </c:if>
    <c:if test="${sessionScope.user!=null }">    	
	    <ul class="sign-success">
	        <li class="sign-success-img">
	            <img src="${pageContext.request.contextPath}/public/img/cairo.jpg" alt="">
	        </li>
	        <li class="sign-success-container disable-user">
	            <ul class="user-panner">
	                <li class="user-panner-item">
	                    <a href="#" class="user-panner-item-link">${sessionScope.user.userName }</a>
	                </li>
	                <li class="user-panner-item">
	                    <a href="bookingHistory" class="user-panner-item-link">Booking History</a>
	                </li>
	                <li class="user-panner-item">
	                    <a href="${pageContext.request.contextPath}/logout" class="user-panner-item-link">Logout</a>
	                </li>
	            </ul>
	        </li>
	    </ul>
    </c:if>
</div>