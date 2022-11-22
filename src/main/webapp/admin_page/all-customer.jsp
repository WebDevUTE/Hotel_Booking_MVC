<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>TripFinder Admin</title>
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/admin_page/assets/img/logoadmin.svg">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/datatables/datatables.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/feathericon.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/style.css"> </head>
	<link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/style.css"> </head>

<body>
	<div class="main-wrapper">
		<%@include file = './common/HeaderAdmin.jsp' %>
		<%@include file = './common/NavbarAdmin.jsp' %>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<div class="mt-5">
								<h4 class="card-title float-left mt-2">User Accounts</h4> </div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body booking_card">
								<div class="table-responsive">
									<table class="datatable table table-stripped table table-hover table-center mb-0">
										<thead>
											<tr>
												<th>Username</th>
												<th>Email User</th>
												<th>Status</th>
												<th class="text-right">Actions</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items='${allUsers}' var="allUsers">
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/admin_page/assets/img/profiles/avatar-04.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">${allUsers.userName }</span>
                                                    </h2>
                                                </td>
												<td>${allUsers.email }</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Active</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-window-close m-r-5"></i> Block User</a> </div>
													</div>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="delete_asset" class="modal fade delete-modal" role="dialog">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body text-center"> <img src="${pageContext.request.contextPath}/admin_page/assets/img/sent.png" alt="" width="50" height="46">
							<h3 class="delete_class">Are you sure want to block this users?</h3>
							<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
								<button type="submit" class="btn btn-danger">Delete</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/datatables/datatables.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/raphael/raphael.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/script.js"></script>
</body>

</html>