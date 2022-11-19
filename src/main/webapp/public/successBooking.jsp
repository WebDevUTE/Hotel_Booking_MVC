<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/successBooking.css">
    <script src="https://kit.fontawesome.com/476aa9aedb.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Success Booking</title>
</head>
<body>
    <div class="success-contaier">
        <img src="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" alt="" class="success-img">
        <i class="fas fa-check-circle success-icon"></i>
        <h1 class="success-header">Your booking has been confirmed</h1>
        <p class="success-desc">Dear <span>${bookingInfo.name }</span>. Your reservation number is <span>${bookingInfo.booking.bookingId}</span></p>
        <a href="checkBooking?bookingInfoId=${bookingInfo.bookingUserInfoId}" class="success-link">Check your booking</a>

    </div>
</body>
</html>