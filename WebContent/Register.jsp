<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from wpkixx.com/html/socimo/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:51:25 GMT -->
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
			<div class="bg-image" style="background-image: url(images/resources/login-bg.png)"></div>
		</div>
	</div>
	<div class="auth-login">
		<div class="verticle-center">
			<div class="signup-form">
				<h4><i class="icofont-lock"></i> Create an Account</h4>
				<form method="post" class="c-form" action="./RegisterServlet" >
					<div class="row merged-10">
						<div class="col-lg-12"><h4>It's quick and Easy</h4></div>
						<div class="col-lg-6 col-sm-6 col-md-6">
							<input type="text" name="fname" placeholder="First Name">
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6">
							<input type="text" name="lname" placeholder="Last Name">
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6">
							<input type="text" name="email" placeholder="Email">
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6">
							<input type="password" name="password" placeholder="Password">
						</div>
						<div class="col-lg-12">
							<div class="gender">
							  <input type="radio" id="male" name="gender" value="Male">
							  <label for="male">Male</label>
							  <input type="radio" id="female" name="gender" value="Female">
							  <label for="female">Female</label>
							</div>	
						</div>
						
						<div class="col-lg-12">
							<div class="checkbox">
								<input type="checkbox" id="checkbox" checked>
							</div>
							<button class="main-btn" type="submit"><i class="icofont-key"></i> Signup</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</div>
	
	<script src="js/main.min.js"></script>
	<script src="js/script.js"></script>
	

</body>	

<!-- Mirrored from wpkixx.com/html/socimo/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:51:25 GMT -->
</html>