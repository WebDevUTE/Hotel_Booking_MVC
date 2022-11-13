<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href=".//css/style.signup.css">
    <link rel="stylesheet" href=".//css/base.signup.css">
    <link rel="shortcut icon" href="../img/logo-alt.980da429.svg" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">
    <title>Sign in</title>
</head>
<body>
    <!-- form log in -->
    <div class="modal">
        <div class="modal__login">
            <div class="modal__logo">
                <a href="" class="active__home">
                    <img src="./img/favicon.png" alt="logo">
                    <h3>TripFinder.</h3>
                </a>
            </div>

            <div class="modal__welcome">
                <h2 class="modal__body-welcome">Welcome Back</h2>
                <p class="modal__body-parheading">Please log into your account</p>
            </div>

            <div class="modal__body">
                <form action="" method="" class="form__footer" id="form-1">
                    <div class="form-control">
                        <label for="email" class="form-control-label">Email</label>
                        <input type="email" name="email" id="email" class="label-input">

                        <small></small>
                    </div>

                    <div class="form-control">
                        <label for="password" class="form-control-label">Password</label>
                       
                        <input type="password" name="password" id="password" class="label-input label-pass">
                        <!-- close -->
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="eye eye-close">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.242 4.242L9.88 9.88" />
                        </svg>
                            
                        <!-- open -->
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="eye eye-open hidden">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        </svg>
                        
                        <small></small>
                    </div>

                    <div class="modal__body-password">
                        <div class="modal__body-rememberpass">
                            <input class="modal__checked" type="checkbox" name="remember" value="">
                            <span class="btn-savepass">Remember Me</span>
                        </div>
                        <a href="" class="btn-forget">Forget Password ?</a>
                    </div>

                    <!-- <button type="submit" class="btn-primary">
                        <span class="btn-login">Login</span>
                    </button> -->
                    <input type="submit" value="Login" class="btn-primary">
                </form>
            </div>

            <div class="modal__divider">
                <span class="modal__log-with">
                    Or log in with
                </span>
            </div>

            <div class="modal__elements-log">
                <div class="btn-row">
                    <div class="btn-col-12">
                        <button type="button" class="btn-element facebook-btn">
                            <span>Facebook</span>
                        </button>
                    </div>
                    <div class="btn-col-12">
                        <button type="button" class="btn-element github-btn">
                            <span>Github</span>
                        </button>
                    </div>
                </div>
                <div class="btn-row">
                    <div class="btn-col-12">
                        <button type="button" class="btn-element firebase-btn">
                            <span>Firebase</span>
                        </button>
                    </div>
                    <div class="btn-col-12">
                        <button type="button"  class="btn-element google-btn">
                            <span>Google+</span>
                        </button>
                    </div>
                </div>
            </div>

            <div class="modal__footer">
                <p class="modal-no-account">Don't Have an Account?</p>
                <a href="./signup.jsp" class="modal-register">Registration</a>
            </div>
        </div>

        <div class="modal-img">
            <div style="background-image: url(./img/login-page-bg.eea21cfc.jpg);"></div>
        </div>
    </div>

    <script src="./js/activePass.js"></script>
    <script src="./js/validationLogin.js"></script>
</body>
</html>