<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/signupBase.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/verify.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">
    <title>TripFinder.</title>
</head>
<body>
    <!-- form log in -->
    <div class="modal">
        <div class="modal__login">
            <div class="modal__logo">
                <a href="" class="active__home">
                    <img src="${pageContext.request.contextPath}/public/img/favicon.png" alt="logo">
                    <h3>TripFinder.</h3>
                </a>
            </div>

            <div class="modal__welcome">
                <h2 class="modal__body-welcome">Welcome To TripFinder.</h2>
                <p class="modal__body-parheading">Enter OTP to activate your account</p>
            </div>

            <div class="modal__body">
                <form action="verify" method="post">
                    <div class="form-control">
                        <label for="" class="form-control-label">OTP</label>
                        <input type="text" name="otp" id="otp" class="label-input">

                        <small></small>
                    </div>
                    <input type="submit" value="Activate" class="btn-primary">
                </form>
            </div>
        </div>

        <div class="modal-img">
            <div style="background-image: url(${pageContext.request.contextPath}/public/img/login-page-bg.eea21cfc.jpg);"></div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/public/js/validationLogin.js"></script>
</body>
</html>