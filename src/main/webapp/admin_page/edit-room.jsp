<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>TripFinder Admin</title>

	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/admin_page/assets/img/favicon.png">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap.min.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/fontawesome/css/fontawesome.min.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/feathericon.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/plugins/morris/morris.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin_page/assets/css/bootstrap-datetimepicker.min.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin_page/assets/css/style.css">

</head>

<body>

	<div class="main-wrapper">

		<%@include file='./common/HeaderAdmin.jsp' %>


		<%@include file='./common/NavbarAdmin.jsp' %>

		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row align-items-center">
						<div class="col">
							<h3 class="page-title mt-5">Edit Hotel</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<form action="editHotel?hotelId=${hotel.hotelId}" method="post" enctype="multipart/form-data">
							<div class="row formtype">
								<div class="col-md-4">
									<div class="form-group">
										<label for="hotelName">Hotel Name</label>
										<input name="hotelName" class="form-control" type="text" value='${hotel.hotelName }'>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="hotelType">Hotel Type</label>
										<select name="hotelType" class="form-control" id="sel1" >
											<option value="Villa">Villa</option>
											<option value="Hotel">Hotel</option>
											<option value="Resort">Resort</option>
											<option value="Cottage">Cottage</option>
											<option value="Duplex">Duplex</option>
											<option value="Landscape">Landscape</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="rooms" >Number of Rooms</label>
										<input name="rooms" class="form-control" type="text" value='${hotel.rooms }'>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="destination" >Destinations</label>
										<select name="destination" class="form-control" id="sel5" >
											<option value="London">London</option>
											<option value="Paris">Paris</option>
											<option value="Newyork">Newyork</option>
											<option value="Japan">Japan</option>
											<option value="Korea">Korea</option>
											<option value="China">China</option>
											<option value="Thailand">Thailand</option>
											<option value="Australia">Australia</option>
											<option value="Singapore">Singapore</option>
											<option value="JaCanadapan">Canada</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="address">Address</label>
										<input name="address" type="text" class="form-control" id="usr" value='${hotel.address }'>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="price">Price per Night</label>
										<input name="price" type="text" class="form-control" id="usr1" value='${hotel.price }'>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="description">Description</label>
										<textarea name="description" class="form-control" rows="5" id="comment"></textarea>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>File Upload</label>
										<div class="custom-file">
										  <input name="img" type="file" id="customFile" class="btn btn-primary buttonedit" multiple="multiple" value="fasfw">
										</div>
									</div>
									<div id="selectedBanner"></div>
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


	<script src="${pageContext.request.contextPath}/admin_page/assets/js/jquery-3.5.1.min.js"></script>

	<script src="${pageContext.request.contextPath}/admin_page/assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/js/select2.min.js"></script>

	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin_page/assets/plugins/raphael/raphael.min.js"></script>

	<script src="${pageContext.request.contextPath}/admin_page/assets/js/bootstrap-datetimepicker.min.js"></script>

	<script src="${pageContext.request.contextPath}/admin_page/assets/js/script.js"></script>
	<script>
		const string = "${hotel.description}"
		$(function () {
			$('#datetimepicker3').datetimepicker({
				format: 'LT'
			});
		});
		$(document).ready(function(){
    		$("#comment").text(string);
 
    	})
    	
    	var selDiv = ""
		var storedFiles = []
		$(document).ready(function(){
			$("#customFile").on("change", handleFileSelect);
			selDiv = $("#selectedBanner")
		})
		
		function handleFileSelect(e){
			var files = e.target.files;
	        var filesArr = Array.prototype.slice.call(files);
	        filesArr.forEach(function (f) {
	          if (!f.type.match("image.*")) {
	            return;
	          }
	          storedFiles.push(f);
	          var reader = new FileReader();
	          reader.onload = function (e) {
	            var html =
	              '<img src="' +
	              e.target.result +
	              "\" data-file='" +
	              f.name +
	              "' class='' alt='Category Image' height='150px' width='150px'>";
	            selDiv.html(html);
	          };
	          reader.readAsDataURL(f);
	        });
		}
	</script>
</body>

</html>