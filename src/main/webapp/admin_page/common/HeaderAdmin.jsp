<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header">
			<div class="header-left">
				<a href="admin" class="logo"> <img src="${pageContext.request.contextPath}/admin_page/assets/img/favicon.png" width="50" height="70" alt="logo"> <span class="logoclass">TripFinder.</span> </a>
				<a href="admin" class="logo logo-small"> <img src="${pageContext.request.contextPath}/admin_page/assets/img/favicon.png" alt="Logo" width="30" height="30"> </a>
			</div>
			<a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
			<a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
			<ul class="nav user-menu">
				<li class="nav-item dropdown has-arrow">
					<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img class="rounded-circle" src="${pageContext.request.contextPath}/admin_page/assets/img/profiles/avatar-01.jpg" width="31" alt="Nguyen Vinh"></span> </a>
					<div class="dropdown-menu">
						<div class="user-header">
							<div class="avatar avatar-sm"> <img src="${pageContext.request.contextPath}/admin_page/assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle"> </div>
							<div class="user-text">
								<h6>Nguyen Vinh</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
						</div> <a class="dropdown-item" href="profile">My Profile</a> <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Logout</a> </div>
				</li>
			</ul>
		</div>