<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>TripFinder Admin</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/admin_page/assets/img/favicon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/css/feathericon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin_page/assets/css/style.css">
</head>

<body>
	<div class="main-wrapper">
		<%@include file='./common/HeaderAdmin.jsp'%>
		<%@include file='./common/NavbarAdmin.jsp'%>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title mt-5">Add Hotel</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<form action="addHotel" method="post">
							<div class="row formtype">
								<div class="col-md-4">
									<div class="form-group">
										<label for="hotelName">Hotel Name</label> 
										<input name="hotelName" class="form-control" type="text" required="required">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="hotelType">Hotel Type</label> 
										<select class="form-control" id="sel1" name="hotelType" required="required">

											<option>Villa</option>
											<option>Hotel</option>
											<option>Resort</option>
											<option>Cottage</option>
											<option>Duplex</option>
											<option>Landscape</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="rooms">Number of Rooms</label> 
										<input name="rooms" class="form-control" type="text" required="required">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="destination" >Destinations</label> 
										<select class="form-control" name="destination"
											id="sel5" name="sellist1" required="required">
											<option>London</option>
											<option>Paris</option>
											<option>Newyork</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="address">Address</label> 
										<input type="text" class="form-control" name="address"
											id="usr" required="required">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="price">Price per Night</label> 
										<input type="text" name="price"
											class="form-control" id="usr1" required="required">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="description">Description</label>
										<textarea class="form-control" rows="5" id="comment"
											name="description" required="required"></textarea>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary buttonedit ml-2">Save</button>
							<button type="button" class="btn btn-primary buttonedit">Cancel</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/jquery-3.5.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/plugins/raphael/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap-datetimepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin_page/assets/js/script.js"></script>
	<script>
		$(function() {
			$('#datetimepicker3').datetimepicker({
				format : 'LT'
			});
		});
	</script>
</body>

</html>