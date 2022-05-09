<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="tag" %> 

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from wpkixx.com/html/socimo/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:47:13 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>Socimo | Social Media Network</title>
    <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16"> 
    
    <link rel="stylesheet" href="css/main.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/color.css">
    <link rel="stylesheet" href="css/responsive.css">

</head>
<body>
<div class="page-loader" id="page-loader">

  <div class="loader"><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span><span class="loader-item"></span></div>

</div><!-- page loader -->
<div class="theme-layout">
	
	<div class="authtication bluesh high-opacity">
		<div class="verticle-center">
			<div class="welcome-note">
				<div class="logo"><img src="images/logo.png" alt=""><span>Socimo</span></div>
				<h1>Welcome to Socimo</h1>
				<p>
					Socimo is a social network that can be used to connect people. We helps you connect and share with the people in your life. 
				</p>
			</div>
			<div class="bg-image" style="background-image: url(images/resources/login-bg3.jpg)"></div>
		</div>
	</div>
	<div class="auth-login">
		<div class="logo"><img src="images/logo.png" alt=""><span>Socimo</span></div>
		<div class="mockup left-bottom"><img src="images/mockup.png" alt=""></div>
		<div class="verticle-center">
			<div class="login-form">
				<h4><i class="icofont-key-hole"></i> Login</h4>
				<form method="post" class="c-form" action="./LoginServlet" >
					<input type="text" name="email" value="<tag:if test="request.getParameter('Email') != null}"><%= request.getParameter("Email")%></tag:if>" placeholder="Email">
					<input type="password" name="pass" value="" placeholder="Password">
					<div class="checkbox">
						<input type="checkbox" name="remember" value="Remember Me" id="checkbox">
						<label for="checkbox"><span>Remember Me</span></label>
					</div>
					<button class="main-btn" type="submit"><i class="icofont-key"></i> Login</button>
				</form>
				<span>Don't have an account? <a class="register-link" href="./Register.jsp" title="Register Now" style="color: #3ca9fc;">Register Now</a></span>
			</div>
		</div>
		<div class="mockup right"><img src="images/star-shape.png" alt=""></div>
	</div>
</div>
	
	<script src="js/main.min.js"></script>
	<script src="js/script.js"></script>

</body>	

<!-- Mirrored from wpkixx.com/html/socimo/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:47:35 GMT -->
</html>