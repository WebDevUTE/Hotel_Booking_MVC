 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/privacy.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/footer.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/logo-alt.980da429.svg" type="image/x-icon">
    <title>Privacy</title>
</head>
<body>
    <div class="wrapper">
        <header class="header">
            <div class="container-fluid">
                <div class="header-main">
                   <%@include file='./common/navbarWithoutSearch.jsp' %>
                </div>
            </div>
        </header>
        <section class="privacy">
            <div class="container-fluid">
                <div class="privacy-header">
                    <h1 class="privacy-heading">Privacy Policy</h1>
                    <h3>What User Data We Collect</h3>
                    <p>When you visit the website, we may collect the following data:</p>
                    <ol>
                        <li>Your IP address.</li>
                        <li>Your contact information and email address.</li>
                        <li>Other information such as interests and preferences</li>
                        <li>Data profile regarding your online behavior on our website.</li>
                    </ol>
                    <h3>Why We Collect Your Data</h3>
                    <p>We are collecting your data for several reasons:</p>
                    <ol>
                        <li>To better understand your needs.</li>
                        <li>To improve our services and products.</li>
                        <li>To send you promotional emails containing the information we think you will find 
                            interesting.</li>
                        <li>To contact you to fill out surveys and participate in other types of market research.</li>
                        <li>To customize our website according to your online behavior and personal preferences.</li>
                    </ol>
                    <h3>Safeguarding and Securing the Data</h3>
                    <p>TripFinder is committed to securing your data and keeping it confidential. [name] has done all in its 
                        power to prevent data theft, unauthorized access, and disclosure by implementing the latest 
                        technologies and software, which help us safeguard all the information we collect online.
                    </p>
                    <h3>Our Cookie Policy</h3>
                    <p>Once you agree to allow our website to use cookies, you also agree to use the data it collects 
                        regarding your online behavior (analyze web traffic, web pages you spend the most time on, 
                        and websites you visit).
                        The data we collect by using cookies is used to customize our website to your needs. After we 
                        use the data for statistical analysis, the data is completely removed from our systems.
                        Please note that cookies don't allow us to gain control of your computer in any way. They are 
                        strictly used to monitor which pages you find useful and which you do not so that we can 
                        provide a better experience for you

                        If you want to disable cookies, you can do it by accessing the settings of your internet browser.
                        You can visit www.internetcookies.com, which contains comprehensive information on how to 
                        do this on a wide variety of browsers and devices
                    </p>
                    <h3>Links to Other Websites</h3>
                    <p>Our website contains links that lead to other websites. If you click on these links [name] is not 
                        held responsible for your data and privacy protection. Visiting those websites is not governed by 
                        this privacy policy agreement. Make sure to read the privacy policy documentation of the 
                        website you go to from our website
                    </p>
                    <h3>Restricting the Collection of your Personal Data</h3>
                    <p>
                        At some point, you might wish to restrict the use and collection of your personal data. You can 
achieve this by doing the following:
When you are filling the forms on the website, make sure to check if there is a box which you 
can leave unchecked, if you don't want to disclose your personal information.
If you have already agreed to share your information with us, feel free to contact us via email 
and we will be more than happy to change this for you.
[name] will not lease, sell or distribute your personal information to any third parties, unless we 
have your permission. We might do so if the law forces us. Your personal information will be 
used when we need to send you promotional materials if you agree to this privacy policy.
                    </p>
                </div>
            </div>
        </section>
         <%@ include file='./common/footer.jsp' %>
    </div>
    <script src="${pageContext.request.contextPath}/public/js/privacy.js"></script>
</body>
</html>