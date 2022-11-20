<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Hotel Dashboard Template</title>
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
	<link rel="stylesheet" href="assets/css/feathericon.min.css">
	<link rel="stylesheet" href="assets/plugins/morris/morris.css">
	<link rel="stylesheet" href="assets/css/style.css"> </head>

<body>
	<div class="main-wrapper">
		<%@include file='./common/HeaderAdmin.jsp' %>
		<%@include file='./common/NavbarAdmin.jsp' %>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<div class="mt-5">
								<h4 class="card-title float-left mt-2">All Bookings</h4>
                            </div>
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
												<th>Booking ID</th>
												<th>Name</th>
												<th>Hotel Name</th>
												<th>Checkin Date</th>
												<th>Checkout Date</th>
												<th>Email</th>
												<th>Ph.Number</th>
												<!-- <th>Status</th> -->
												<th class="text-right">Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <div class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></div>
                                                    <span style="font-size: 15px;">Tommy Bernal</span>
                                                    </h2>
                                                </td>
												<td>Hotel Name</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td>vinhnguyen19052002@gmail.com</td>
												<td>631-254-6480</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> 
															 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-check-square m-r-5"></i> Checkout</a> </div>
													</div>
												</td>
											</tr>
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
						<div class="modal-body text-center"> <img src="assets/img/sent.png" alt="" width="50" height="46">
							<h3 class="delete_class">Are you sure want to delete this Asset?</h3>
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
	<script src="assets/js/jquery-3.5.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/datatables.min.js"></script>
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/raphael/raphael.min.js"></script>
	<script src="assets/js/script.js"></script>
</body>

</html>