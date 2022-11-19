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
		<div class="header">
			<div class="header-left">
				<a href="index.html" class="logo"> <img src="assets/img/hotel_logo.png" width="50" height="70" alt="logo"> <span class="logoclass">HOTEL</span> </a>
				<a href="index.html" class="logo logo-small"> <img src="assets/img/hotel_logo.png" alt="Logo" width="30" height="30"> </a>
			</div>
			<a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
			<a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
			<ul class="nav user-menu">
				<li class="nav-item dropdown has-arrow">
					<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Soeng Souy"></span> </a>
					<div class="dropdown-menu">
						<div class="user-header">
							<div class="avatar avatar-sm"> <img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle"> </div>
							<div class="user-text">
								<h6>Soeng Souy</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
						</div> <a class="dropdown-item" href="profile.html">My Profile</a> <a class="dropdown-item" href="settings.html">Account Settings</a> <a class="dropdown-item" href="login.html">Logout</a> </div>
				</li>
			</ul>
		</div>
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="active"> <a href="index.html"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
						<li class="list-divider"></li>
						<li class="submenu"> <a href="#"><i class="fas fa-suitcase"></i> <span> Booking </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-booking.html"> All Booking </a></li>
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span> Customers </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-customer.html"> All customers </a></li>
								<li><a href="edit-customer.html"> Edit Customer </a></li>
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fas fa-key"></i> <span> Rooms </span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a class="active" href="all-rooms.html">All Rooms </a></li>
								<li><a href="edit-room.html"> Edit Rooms </a></li>
								<li><a href="add-room.html"> Add Rooms </a></li>
							</ul>
						</li>	
						<li> <a href="settings.html"><i class="fas fa-cog"></i> <span>Settings</span></a> </li>
						<li class="list-divider"></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<div class="mt-5">
								<h4 class="card-title float-left mt-2">All Rooms</h4> <a href="add-room.html" class="btn btn-primary float-right veiwbutton">Add Room</a> </div>
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
												<th>Room Type</th>
												<th>Total Numbers</th>
												<th>Date</th>
												<th>Time</th>
												<th>Arrival Date</th>
												<th>Depature Date</th>
												<th>Email ID</th>
												<th>Ph.Number</th>
												<th>Status</th>
												<th class="text-right">Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>BKG-0001</td>
												<td>
													<h2 class="table-avatar">
                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-03.jpg" alt="User Image"></a>
                                                    <a href="profile.html">Tommy Bernal <span>#0001</span></a>
                                                    </h2>
                                                </td>
												<td>Double</td>
												<td>10</td>
												<td>21-03-2020</td>
												<td>11.00 AM</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="c0b4afadadb9a2a5b2aea1ac80a5b8a1adb0aca5eea3afad">[email&#160;protected]</a></td>
												<td>631-254-6480</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Active</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="edit-room.html"><i class="fas fa-pencil-alt m-r-5"></i> Edit</a> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-trash-alt m-r-5"></i> Delete</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0002</td>
												<td>
													<h2 class="table-avatar">
                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-04.jpg" alt="User Image"></a>
                                                    <a href="profile.html">Richard Brobst <span>#0002</span></a>
                                                    </h2>
                                                </td>
												<td>Single</td>
												<td>8</td>
												<td>21-03-2020</td>
												<td>09.00 AM</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="03716a606b62716761716c61707743667b626e736f662d606c6e">[email&#160;protected]</a></td>
												<td>830-468-1042</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Inactive</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="edit-room.html"><i class="fas fa-pencil-alt m-r-5"></i> Edit</a> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-trash-alt m-r-5"></i> Delete</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0003</td>
												<td>
													<h2 class="table-avatar">
                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-05.jpg" alt="User Image"></a>
                                                    <a href="profile.html">Ellen Thill <span>#0003</span></a>
                                                    </h2>
                                                </td>
												<td>Double</td>
												<td>10</td>
												<td>21-03-2020</td>
												<td>08.00 AM</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8ce9e0e0e9e2f8e4e5e0e0cce9f4ede1fce0e9a2efe3e1">[email&#160;protected]</a></td>
												<td>508-335-5531</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Active</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="edit-room.html"><i class="fas fa-pencil-alt m-r-5"></i> Edit</a> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-trash-alt m-r-5"></i> Delete</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0004</td>
												<td>
													<h2 class="table-avatar">
                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-06.jpg" alt="User Image"></a>
                                                    <a href="profile.html">Corina Kelsey <span>#0004</span></a>
                                                    </h2>
                                                </td>
												<td>Single</td>
												<td>15</td>
												<td>21-03-2020</td>
												<td>12.00 AM</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="462529342f28272d232a35233f06233e272b362a236825292b">[email&#160;protected]</a></td>
												<td>262-260-1170</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Active</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="edit-room.html"><i class="fas fa-pencil-alt m-r-5"></i> Edit</a> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-trash-alt m-r-5"></i> Delete</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0005</td>
												<td>
													<h2 class="table-avatar">
                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-07.jpg" alt="User Image"></a>
                                                    <a href="profile.html">Carolyn Lane <span>#0005</span></a>
                                                    </h2>
                                                </td>
												<td>Double</td>
												<td>12</td>
												<td>21-03-2020</td>
												<td>06.00 AM</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="452624372a293c2b29242b2005203d24283529206b262a28">[email&#160;protected]</a></td>
												<td>570-458-0070</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Active</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="edit-room.html"><i class="fas fa-pencil-alt m-r-5"></i> Edit</a> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-trash-alt m-r-5"></i> Delete</a> </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>BKG-0006</td>
												<td>
													<h2 class="table-avatar">
                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/profiles/avatar-08.jpg" alt="User Image"></a>
                                                    <a href="profile.html">David Alvarez <span>#0006</span></a>
                                                    </h2>
                                                </td>
												<td>Single</td>
												<td>7</td>
												<td>21-03-2020</td>
												<td>10.00 AM</td>
												<td>22-03-2020</td>
												<td>23-03-2020</td>
												<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="cfabaeb9a6abaea3b9aebdaab58faab7aea2bfa3aae1aca0a2">[email&#160;protected]</a></td>
												<td>212-414-9510</td>
												<td>
													<div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Inactive</a> </div>
												</td>
												<td class="text-right">
													<div class="dropdown dropdown-action"> <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v ellipse_color"></i></a>
														<div class="dropdown-menu dropdown-menu-right"> <a class="dropdown-item" href="edit-room.html"><i class="fas fa-pencil-alt m-r-5"></i> Edit</a> <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fas fa-trash-alt m-r-5"></i> Delete</a> </div>
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
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/raphael/raphael.min.js"></script>
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/datatables.min.js"></script>
	<script src="assets/js/script.js"></script>
</body>

</html>