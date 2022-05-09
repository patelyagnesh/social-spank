<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from wpkixx.com/html/socimo/settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:47:10 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Socimo | Social Media Network Template</title>
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
	
	<div class="responsive-header">
		<div class="logo res"><img src="images/logo.png" alt=""><span>Socimo</span></div>
		<div class="user-avatar mobile">
			<a href="profile.html" title="View Profile"><img alt="" src="images/resources/user.jpg"></a>
			<div class="name">
				<h4>Danial Cardos</h4>
				<span>Ontario, Canada</span>
			</div>
		</div>
		<div class="right-compact">
			<div class="sidemenu">
				<i>
				<svg id="side-menu2" xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg></i>
			</div>
			<div class="res-search">
				<span>
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg></span>
			</div>
		</div>
		<div class="restop-search">
			<span class="hide-search"><i class="icofont-close-circled"></i></span>
			<form method="post">
				<input type="text" placeholder="Search...">
			</form>
		</div>
	</div><!-- responsive header -->
	
	<header class="">
		<div class="topbar stick">
			<div class="logo"><img src="images/logo.png" alt=""><span>Socimo</span></div>
			<div class="searches">
				<form method="post" action="./SearchServlet">
					<input type="text" name="findName" placeholder="Search...">
					<button type="submit"><i class="icofont-search"></i></button>
					<span class="cancel-search"><i class="icofont-close"></i></span>
					<div class="recent-search">
						<h4 class="recent-searches">Search Results</h4>
						
						<ul class="so-history">
						<tag:forEach var="searchUser" items="${searchUser}">
							<li>
								<div class="searched-user">
									<figure><img src="images/resources/user1.jpg" alt=""></figure>
									<a href="./ProfileServlet?searchId=${searchUser.getUserID()}"><span>${searchUser.getName()}</span></a>
								</div>
								<span class="trash"><i class="icofont-close-circled"></i></span>
							</li>
						</tag:forEach>
						</ul>
					</div>
				</form>
			</div>
			
			<ul class="web-elements">
				<li>
					<div class="user-dp">
						<a href="./ProfileServlet" title="">
							<img alt="" src="images/resources/user.jpg">
							<div class="name">
								<h4>${user}</h4>
							</div>
						</a>	
					</div>
				</li>
				<li>
					<a href="./GetAllData" title="Home" data-toggle="tooltip">
						<i>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg></i>
					</a>
				</li>
				<li>
					<a class="" href="./NotificationServlet" title="Notifications" data-toggle="tooltip">
						<i>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path><path d="M13.73 21a2 2 0 0 1-3.46 0"></path></svg></i>
					</a>
					<span></span>
				</li>
				<li>
					<a href="#" title="">
						<i>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
						</i>
					</a>
					<ul class="dropdown">
						<li><a href="Settings.jsp" title=""><i class="icofont-gear"></i> Setting</a></li>
						<li class="logout"><a href="./LogoutServlet" title=""><i class="icofont-power"></i> Logout</a></li>
					</ul>
				</li>
			</ul>
		</div>
		
	</header><!-- header -->
	
    <section>
    	<div class="gap no-gap bluesh high-opacity">
			<div style="background-image: url(images/resources/top-bg.jpg)" class="bg-image"></div>
	        <div class="container">
	        	<div class="row">
	        		<div class="col-lg-12">
	        			<div class="post-subject">
							<h1>Account Settings</h1>
							<p> Choose your accounts options and privacy. </p>
			            </div>
		            </div>
	            </div>
	        </div>
    	</div>
    </section>
	
    <section>
        <div class="gap">
            <div class="container">
                <div class="row">
                	<div class="col-lg-3 mb-4">
                		<nav class="responsive-tab">
		                    <ul class="nav nav-tabs uk-list">
								<li class="nav-item"><a class="active" href="#account" data-toggle="tab">Account</a></li>
								<li class="nav-item"><a class="" href="#changePassword" data-toggle="tab">Change Password</a></li>
								<li class="nav-item"><a class="" href="#close" data-toggle="tab">Close Account</a></li>
		                    </ul>
		                </nav>
                	</div>
                    <div class="col-lg-9">
                        <div class="main-wraper">
                            <div class="tab-content" id="components-nav">
                                <!-- settings -->
                                <div class="tab-pane active fade show" id="account">
									<div class="uk-width">
										<div class="setting-card">
											</p>
											<h6>Basic Profile</h6>
											<p>Add information about yourself</p>
											<form method="post" action="./AddBioServlet">
												<fieldset class="row merged-10">
													<div class="mb-4 col-lg-6">
														<input class="uk-input" name="fullname" type="text" placeholder="Full Name">
													</div>
													<div class="mb-4 col-lg-6">
														<input class="uk-input" name="nickname" type="text" placeholder="Nickname">
													</div>
													<div class="mb-4 col-lg-6">
														<input class="uk-input" name="dob" type="date" placeholder="Date Of Birth">
													</div>
													<div class="mb-4 col-lg-6">
														<input class="uk-input" name="lang" type="text" placeholder="Languages">
													</div>
													<div class="mb-4 col-lg-6">
														<input class="uk-input" name="edu" type="text" placeholder="Education">
													</div>
													<div class="mb-4 col-lg-6">
														<input class="uk-input" name="occu" type="text" placeholder="Occupation">
													</div>
													<div class="mb-4 col-lg-6">
														<select class="uk-select" name="status">
															<option>Relationship Status</option>
															<option>Married</option>
															<option>Single</option>
															<option>Other</option>
														</select>
													</div>
													<div class="mb-4 col-lg-6">
														<select id="country" name="country">
														   <option value="Afganistan">Afghanistan</option>
														   <option value="Albania">Albania</option>
														   <option value="Algeria">Algeria</option>
														   <option value="American Samoa">American Samoa</option>
														   <option value="Andorra">Andorra</option>
														   <option value="Angola">Angola</option>
														   <option value="Anguilla">Anguilla</option>
														   <option value="Antigua & Barbuda">Antigua & Barbuda</option>
														   <option value="Argentina">Argentina</option>
														   <option value="Armenia">Armenia</option>
														   <option value="Aruba">Aruba</option>
														   <option value="Australia">Australia</option>
														   <option value="Austria">Austria</option>
														   <option value="Azerbaijan">Azerbaijan</option>
														   <option value="Bahamas">Bahamas</option>
														   <option value="Bahrain">Bahrain</option>
														   <option value="Bangladesh">Bangladesh</option>
														   <option value="Barbados">Barbados</option>
														   <option value="Belarus">Belarus</option>
														   <option value="Belgium">Belgium</option>
														   <option value="Belize">Belize</option>
														   <option value="Benin">Benin</option>
														   <option value="Bermuda">Bermuda</option>
														   <option value="Bhutan">Bhutan</option>
														   <option value="Bolivia">Bolivia</option>
														   <option value="Bonaire">Bonaire</option>
														   <option value="Bosnia & Herzegovina">Bosnia & Herzegovina</option>
														   <option value="Botswana">Botswana</option>
														   <option value="Brazil">Brazil</option>
														   <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
														   <option value="Brunei">Brunei</option>
														   <option value="Bulgaria">Bulgaria</option>
														   <option value="Burkina Faso">Burkina Faso</option>
														   <option value="Burundi">Burundi</option>
														   <option value="Cambodia">Cambodia</option>
														   <option value="Cameroon">Cameroon</option>
														   <option value="Canada">Canada</option>
														   <option value="Canary Islands">Canary Islands</option>
														   <option value="Cape Verde">Cape Verde</option>
														   <option value="Cayman Islands">Cayman Islands</option>
														   <option value="Central African Republic">Central African Republic</option>
														   <option value="Chad">Chad</option>
														   <option value="Channel Islands">Channel Islands</option>
														   <option value="Chile">Chile</option>
														   <option value="China">China</option>
														   <option value="Christmas Island">Christmas Island</option>
														   <option value="Cocos Island">Cocos Island</option>
														   <option value="Colombia">Colombia</option>
														   <option value="Comoros">Comoros</option>
														   <option value="Congo">Congo</option>
														   <option value="Cook Islands">Cook Islands</option>
														   <option value="Costa Rica">Costa Rica</option>
														   <option value="Cote DIvoire">Cote DIvoire</option>
														   <option value="Croatia">Croatia</option>
														   <option value="Cuba">Cuba</option>
														   <option value="Curaco">Curacao</option>
														   <option value="Cyprus">Cyprus</option>
														   <option value="Czech Republic">Czech Republic</option>
														   <option value="Denmark">Denmark</option>
														   <option value="Djibouti">Djibouti</option>
														   <option value="Dominica">Dominica</option>
														   <option value="Dominican Republic">Dominican Republic</option>
														   <option value="East Timor">East Timor</option>
														   <option value="Ecuador">Ecuador</option>
														   <option value="Egypt">Egypt</option>
														   <option value="El Salvador">El Salvador</option>
														   <option value="Equatorial Guinea">Equatorial Guinea</option>
														   <option value="Eritrea">Eritrea</option>
														   <option value="Estonia">Estonia</option>
														   <option value="Ethiopia">Ethiopia</option>
														   <option value="Falkland Islands">Falkland Islands</option>
														   <option value="Faroe Islands">Faroe Islands</option>
														   <option value="Fiji">Fiji</option>
														   <option value="Finland">Finland</option>
														   <option value="France">France</option>
														   <option value="French Guiana">French Guiana</option>
														   <option value="French Polynesia">French Polynesia</option>
														   <option value="French Southern Ter">French Southern Ter</option>
														   <option value="Gabon">Gabon</option>
														   <option value="Gambia">Gambia</option>
														   <option value="Georgia">Georgia</option>
														   <option value="Germany">Germany</option>
														   <option value="Ghana">Ghana</option>
														   <option value="Gibraltar">Gibraltar</option>
														   <option value="Great Britain">Great Britain</option>
														   <option value="Greece">Greece</option>
														   <option value="Greenland">Greenland</option>
														   <option value="Grenada">Grenada</option>
														   <option value="Guadeloupe">Guadeloupe</option>
														   <option value="Guam">Guam</option>
														   <option value="Guatemala">Guatemala</option>
														   <option value="Guinea">Guinea</option>
														   <option value="Guyana">Guyana</option>
														   <option value="Haiti">Haiti</option>
														   <option value="Hawaii">Hawaii</option>
														   <option value="Honduras">Honduras</option>
														   <option value="Hong Kong">Hong Kong</option>
														   <option value="Hungary">Hungary</option>
														   <option value="Iceland">Iceland</option>
														   <option value="Indonesia">Indonesia</option>
														   <option value="India">India</option>
														   <option value="Iran">Iran</option>
														   <option value="Iraq">Iraq</option>
														   <option value="Ireland">Ireland</option>
														   <option value="Isle of Man">Isle of Man</option>
														   <option value="Israel">Israel</option>
														   <option value="Italy">Italy</option>
														   <option value="Jamaica">Jamaica</option>
														   <option value="Japan">Japan</option>
														   <option value="Jordan">Jordan</option>
														   <option value="Kazakhstan">Kazakhstan</option>
														   <option value="Kenya">Kenya</option>
														   <option value="Kiribati">Kiribati</option>
														   <option value="Korea North">Korea North</option>
														   <option value="Korea Sout">Korea South</option>
														   <option value="Kuwait">Kuwait</option>
														   <option value="Kyrgyzstan">Kyrgyzstan</option>
														   <option value="Laos">Laos</option>
														   <option value="Latvia">Latvia</option>
														   <option value="Lebanon">Lebanon</option>
														   <option value="Lesotho">Lesotho</option>
														   <option value="Liberia">Liberia</option>
														   <option value="Libya">Libya</option>
														   <option value="Liechtenstein">Liechtenstein</option>
														   <option value="Lithuania">Lithuania</option>
														   <option value="Luxembourg">Luxembourg</option>
														   <option value="Macau">Macau</option>
														   <option value="Macedonia">Macedonia</option>
														   <option value="Madagascar">Madagascar</option>
														   <option value="Malaysia">Malaysia</option>
														   <option value="Malawi">Malawi</option>
														   <option value="Maldives">Maldives</option>
														   <option value="Mali">Mali</option>
														   <option value="Malta">Malta</option>
														   <option value="Marshall Islands">Marshall Islands</option>
														   <option value="Martinique">Martinique</option>
														   <option value="Mauritania">Mauritania</option>
														   <option value="Mauritius">Mauritius</option>
														   <option value="Mayotte">Mayotte</option>
														   <option value="Mexico">Mexico</option>
														   <option value="Midway Islands">Midway Islands</option>
														   <option value="Moldova">Moldova</option>
														   <option value="Monaco">Monaco</option>
														   <option value="Mongolia">Mongolia</option>
														   <option value="Montserrat">Montserrat</option>
														   <option value="Morocco">Morocco</option>
														   <option value="Mozambique">Mozambique</option>
														   <option value="Myanmar">Myanmar</option>
														   <option value="Nambia">Nambia</option>
														   <option value="Nauru">Nauru</option>
														   <option value="Nepal">Nepal</option>
														   <option value="Netherland Antilles">Netherland Antilles</option>
														   <option value="Netherlands">Netherlands (Holland, Europe)</option>
														   <option value="Nevis">Nevis</option>
														   <option value="New Caledonia">New Caledonia</option>
														   <option value="New Zealand">New Zealand</option>
														   <option value="Nicaragua">Nicaragua</option>
														   <option value="Niger">Niger</option>
														   <option value="Nigeria">Nigeria</option>
														   <option value="Niue">Niue</option>
														   <option value="Norfolk Island">Norfolk Island</option>
														   <option value="Norway">Norway</option>
														   <option value="Oman">Oman</option>
														   <option value="Pakistan">Pakistan</option>
														   <option value="Palau Island">Palau Island</option>
														   <option value="Palestine">Palestine</option>
														   <option value="Panama">Panama</option>
														   <option value="Papua New Guinea">Papua New Guinea</option>
														   <option value="Paraguay">Paraguay</option>
														   <option value="Peru">Peru</option>
														   <option value="Phillipines">Philippines</option>
														   <option value="Pitcairn Island">Pitcairn Island</option>
														   <option value="Poland">Poland</option>
														   <option value="Portugal">Portugal</option>
														   <option value="Puerto Rico">Puerto Rico</option>
														   <option value="Qatar">Qatar</option>
														   <option value="Republic of Montenegro">Republic of Montenegro</option>
														   <option value="Republic of Serbia">Republic of Serbia</option>
														   <option value="Reunion">Reunion</option>
														   <option value="Romania">Romania</option>
														   <option value="Russia">Russia</option>
														   <option value="Rwanda">Rwanda</option>
														   <option value="St Barthelemy">St Barthelemy</option>
														   <option value="St Eustatius">St Eustatius</option>
														   <option value="St Helena">St Helena</option>
														   <option value="St Kitts-Nevis">St Kitts-Nevis</option>
														   <option value="St Lucia">St Lucia</option>
														   <option value="St Maarten">St Maarten</option>
														   <option value="St Pierre & Miquelon">St Pierre & Miquelon</option>
														   <option value="St Vincent & Grenadines">St Vincent & Grenadines</option>
														   <option value="Saipan">Saipan</option>
														   <option value="Samoa">Samoa</option>
														   <option value="Samoa American">Samoa American</option>
														   <option value="San Marino">San Marino</option>
														   <option value="Sao Tome & Principe">Sao Tome & Principe</option>
														   <option value="Saudi Arabia">Saudi Arabia</option>
														   <option value="Senegal">Senegal</option>
														   <option value="Seychelles">Seychelles</option>
														   <option value="Sierra Leone">Sierra Leone</option>
														   <option value="Singapore">Singapore</option>
														   <option value="Slovakia">Slovakia</option>
														   <option value="Slovenia">Slovenia</option>
														   <option value="Solomon Islands">Solomon Islands</option>
														   <option value="Somalia">Somalia</option>
														   <option value="South Africa">South Africa</option>
														   <option value="Spain">Spain</option>
														   <option value="Sri Lanka">Sri Lanka</option>
														   <option value="Sudan">Sudan</option>
														   <option value="Suriname">Suriname</option>
														   <option value="Swaziland">Swaziland</option>
														   <option value="Sweden">Sweden</option>
														   <option value="Switzerland">Switzerland</option>
														   <option value="Syria">Syria</option>
														   <option value="Tahiti">Tahiti</option>
														   <option value="Taiwan">Taiwan</option>
														   <option value="Tajikistan">Tajikistan</option>
														   <option value="Tanzania">Tanzania</option>
														   <option value="Thailand">Thailand</option>
														   <option value="Togo">Togo</option>
														   <option value="Tokelau">Tokelau</option>
														   <option value="Tonga">Tonga</option>
														   <option value="Trinidad & Tobago">Trinidad & Tobago</option>
														   <option value="Tunisia">Tunisia</option>
														   <option value="Turkey">Turkey</option>
														   <option value="Turkmenistan">Turkmenistan</option>
														   <option value="Turks & Caicos Is">Turks & Caicos Is</option>
														   <option value="Tuvalu">Tuvalu</option>
														   <option value="Uganda">Uganda</option>
														   <option value="United Kingdom">United Kingdom</option>
														   <option value="Ukraine">Ukraine</option>
														   <option value="United Arab Erimates">United Arab Emirates</option>
														   <option value="United States of America">United States of America</option>
														   <option value="Uraguay">Uruguay</option>
														   <option value="Uzbekistan">Uzbekistan</option>
														   <option value="Vanuatu">Vanuatu</option>
														   <option value="Vatican City State">Vatican City State</option>
														   <option value="Venezuela">Venezuela</option>
														   <option value="Vietnam">Vietnam</option>
														   <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
														   <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
														   <option value="Wake Island">Wake Island</option>
														   <option value="Wallis & Futana Is">Wallis & Futana Is</option>
														   <option value="Yemen">Yemen</option>
														   <option value="Zaire">Zaire</option>
														   <option value="Zambia">Zambia</option>
														   <option value="Zimbabwe">Zimbabwe</option>
														</select>
													</div>
													<div class="mb-4 col-lg-12">
														<input class="uk-input" name="website" type="Website" placeholder="Website">
													</div>											
													<div class="mb-4 col-lg-12">
														<textarea class="uk-textarea" name="bio" rows="4" placeholder="Your Bio"></textarea>
														<em>Add Something Interesting About You..!</em>
													</div>
													<div class="mb-0 col-lg-12">
														<button type="submit" class="button primary circle">Save Changes</button>
													</div>	
												</fieldset>
											</form>
										</div>
									</div>
                                </div>
                                <!-- Notification -->
                                <div class="tab-pane fade" id="changePassword">
									<div class="uk-width">
										<div class="pass-form">
											<h4>Change Password</h4>
											<p>It's good idea to use strong password that you don't use elsewhere</p>
											<form method="post" action="./ChangePasswordServlet">
												<fieldset class="row merged-10">
													<div class="mb-4 col-lg-12">
														<input type="text" name="email" placeholder="Email">
													</div>
													<div class="mb-4 col-lg-12">
														<input type="password" name="currPass" placeholder="Current Password">
													</div>
													<div class="mb-4 col-lg-12">
														<input type="text" name="newPass" placeholder="New Password">
													</div>
													<div class="mb-4 col-lg-12">
														<button class="main-btn" type="submit">Confirm</button>
													</div>
												</fieldset>
											</form>													
										</div>
									</div>
                                </div>
                                <!-- Change Password -->
                                <div class="tab-pane fade" id="close">
									<div class="del-account">
										<h2>Close Account</h2>
										<p class="mb-4"><b>Warning:</b> If you close your account, you will be unsubscribed from all your followers and friends, and will lose access forever.</p>
										<form method="post" action="./DeleteAccountServlet">
											<div class="row">
												<div class="mb-4 col-lg-6">
													<input class="uk-input" name="email" type="text" placeholder="Email">
												</div>
												<div class="mb-4 col-lg-6">
													<input class="uk-input" name="pass" type="password" placeholder="Password">
												</div>
												<div class="mb-0 col-lg-12">
													<button class="button danger icon-label circle"><i class="icofont-trash"></i> Delete Account</button>
												</div>
											</div>	
										</form>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <figure class="bottom-mockup"><img src="images/footer.png" alt=""></figure>
    <div class="bottombar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="">&copy; copyright All rights reserved by Socimo 2020</span>
				</div>
			</div>
		</div>
	</div><!-- bottombar -->
	
	<div class="wraper-invite">
		<div class="popup">
			<span class="popup-closed"><i class="icofont-close"></i></span>
			<div class="popup-meta">
				<div class="popup-head">
					<h5><i>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></i> Invite Colleagues</h5>
				</div>
				<div class="invitation-meta">
					<p>
						Enter an email address to invite a colleague or co-author to join you on socimo. They will receive an email and, in some cases, up to two reminders.
					</p>
					<form method="post" class="c-form">
						<input type="text" placeholder="Enter Email">
						<button type="submit" class="main-btn">Invite</button>
					</form>
				</div>
			</div>
		</div>
	</div><!-- invite colleague popup -->
	
	<div class="popup-wraper">
		<div class="popup">
			<span class="popup-closed"><i class="icofont-close"></i></span>
			<div class="popup-meta">
				<div class="popup-head">
					<h5><i>
<svg class="feather feather-message-square" stroke-linejoin="round" stroke-linecap="round" stroke-width="2" stroke="currentColor" fill="none" viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/></svg></i> Send Message</h5>
				</div>
				<div class="send-message">
					<form method="post" class="c-form">
						<input type="text" placeholder="Enter Name..">
						<input type="text" placeholder="Subject">
						<textarea placeholder="Write Message"></textarea>
						<div class="uploadimage">
							<i class="icofont-file-jpg"></i>
							<label class="fileContainer">
								<input type="file">Attach file
							</label>
						</div>
						<button type="submit" class="main-btn">Send</button>
					</form>
				</div>
			</div>
		</div>
	</div><!-- send message popup -->
	
	<div class="side-slide">
		<span class="popup-closed"><i class="icofont-close"></i></span>
		<div class="slide-meta">
			<ul class="nav nav-tabs slide-btns">
				 <li class="nav-item"><a class="active" href="#messages" data-toggle="tab">Messages</a></li>
				 <li class="nav-item"><a class="" href="#notifications" data-toggle="tab">Notifications</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active fade show" id="messages" >
					<h4><i class="icofont-envelope"></i> messages</h4>
					<a href="#" class="send-mesg" title="New Message" data-toggle="tooltip"><i class="icofont-edit"></i></a>
					<ul class="new-messages">
						<li>
							<figure><img src="images/resources/user1.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Ibrahim Ahmed</span>
								<a href="#" title="">Helo dear i wanna talk to you</a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user2.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Fatima J.</span>
								<a href="#" title="">Helo dear i wanna talk to you</a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user3.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Fawad Ahmed</span>
								<a href="#" title="">Helo dear i wanna talk to you</a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user4.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Saim Turan</span>
								<a href="#" title="">Helo dear i wanna talk to you</a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user5.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Alis wells</span>
								<a href="#" title="">Helo dear i wanna talk to you</a>
							</div>
						</li>
					</ul>
					<a href="#" title="" class="main-btn" data-ripple="">view all</a>
				</div>
				<div class="tab-pane fade" id="notifications">
					<h4><i class="icofont-bell-alt"></i> notifications</h4>
					<ul class="notificationz">
						<li>
							<figure><img src="images/resources/user5.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Alis wells</span>
								<a href="#" title="">recommend your post</a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user4.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Alis wells</span>
								<a href="#" title="">share your post <strong>a good time today!</strong></a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user2.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Alis wells</span>
								<a href="#" title="">recommend your post</a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user1.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Alis wells</span>
								<a href="#" title="">share your post <strong>a good time today!</strong></a>
							</div>
						</li>
						<li>
							<figure><img src="images/resources/user3.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>Alis wells</span>
								<a href="#" title="">recommend your post</a>
							</div>
						</li>
					</ul>
					<a href="#" title="" class="main-btn" data-ripple="">view all</a>
				</div>
			</div>
		</div>
	</div><!-- side slide message & popup -->
	
	<div class="post-new-popup">
		<div class="popup" style="width: 800px;">
			<span class="popup-closed"><i class="icofont-close"></i></span>
			<div class="popup-meta">
				<div class="popup-head">
					<h5><i>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg></i>Create New Post</h5>
				</div>
				<div class="post-new">
					<div class="post-newmeta">
						<ul class="post-categoroes">
							<li><i class="icofont-camera"></i> Photo / Video</li>
							<li><i class="icofont-google-map"></i> Post Location</li>
							<li><i class="icofont-file-gif"></i> Post Gif</li>
							<li><i class="icofont-ui-tag"></i> Tag to Friend</li>
							<li><i class="icofont-users"></i> Share in Group</li>
							<li><i class="icofont-link"></i> Share Link</li>
							<li><i class="icofont-video-cam"></i> Go Live</li>
							<li><i class="icofont-sale-discount"></i> Post Online Course</li>
							<li><i class="icofont-read-book"></i> Post A Book</li>
							<li><i class="icofont-globe"></i> Post an Ad</li>
						</ul>
						<form method="post" class="dropzone" action="http://wpkixx.com/upload-target">
							<div class="fallback">
								<input name="file" type="file" multiple />
							</div>
						</form>
					</div>	
					<form method="post" class="c-form">
						<textarea id="emojionearea1" placeholder="What's On Your Mind?"></textarea>
						<div class="activity-post">
							<div class="checkbox">
								<input type="checkbox" id="checkbox" checked>
								<label for="checkbox"><span>Activity Feed</span></label>
							</div>
							<div class="checkbox">
								<input type="checkbox" id="checkbox2" checked>
								<label for="checkbox2"><span>My Story</span></label>
							</div>
						</div>
						<div class="select-box">
							<div class="select-box__current" tabindex="1">
								<div class="select-box__value"><input class="select-box__input" type="radio" id="0" value="1" name="Ben" checked="checked" />
									<p class="select-box__input-text"><i class="icofont-globe-alt"></i> Public</p>
								</div>
								<div class="select-box__value"><input class="select-box__input" type="radio" id="1" value="2" name="Ben" checked="checked" />
									<p class="select-box__input-text"><i class="icofont-lock"></i> Private</p>
								</div>
								<div class="select-box__value"><input class="select-box__input" type="radio" id="2" value="3" name="Ben" checked="checked" />
									<p class="select-box__input-text"><i class="icofont-user"></i> Specific Friend</p>
								</div>
								<div class="select-box__value"><input class="select-box__input" type="radio" id="3" value="4" name="Ben" checked="checked" />
									<p class="select-box__input-text"><i class="icofont-star"></i> Only Friends</p>
								</div>
								<div class="select-box__value"><input class="select-box__input" type="radio" id="4" value="5" name="Ben" checked="checked" />
									<p class="select-box__input-text"><i class="icofont-users-alt-3"></i> Joined Groups</p>
								</div>
								<img class="select-box__icon" src="images/arrow-down.svg" alt="Arrow Icon" aria-hidden="true" />
							</div>
							<ul class="select-box__list">
								<li><label class="select-box__option" for="0"><i class="icofont-globe-alt"></i> Public</label></li>
								<li><label class="select-box__option" for="1"><i class="icofont-lock"></i> Private</label></li>
								<li><label class="select-box__option" for="2"><i class="icofont-user"></i> Specific Friend</label></li>
								<li><label class="select-box__option" for="3"><i class="icofont-star"></i> Only Friends</label></li>
								<li><label class="select-box__option" for="4"><i class="icofont-users-alt-3"></i> Joined Groups</label></li>
							</ul>
						</div>
						<input class="schedule-btn" type="text" id="datetimepicker" readonly>
						<input type="text" placeholder="https://www.youtube.com/watch?v=vgvsuiFlA-Y&amp;t=56s">
						<button type="submit" class="main-btn">Publish</button>
					</form>
				</div>
			</div>
		</div>
	</div><!-- New post popup -->
	
	<div class="new-question-popup">
		<div class="popup">
			<span class="popup-closed"><i class="icofont-close"></i></span>
			<div class="popup-meta">
				<div class="popup-head">
					<h5><i>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg></i> Ask Question</h5>
				</div>
				<div class="post-new">
					<form method="post" class="c-form">
						
						<input type="text" placeholder="Question Title">
						<textarea placeholder="Write Question"></textarea>
						
						<select>
							<option>Select Your Question Type</option>
							<option>Article</option>
							<option>Book</option>
							<option>Chapter</option>
							<option>Code</option>
							<option>conference Paper</option>
							<option>Cover Page</option>
							<option>Data</option>
							<option>Exprement Finding</option>
							<option>Method</option>
							<option>Poster</option>
							<option>Preprint</option>
							<option>Technicial Report</option>
							<option>Thesis</option>
							<option>Research</option>
						</select>
						<div class="uploadimage">
							<i class="icofont-eye-alt-alt"></i>
							<label class="fileContainer">
								<input type="file">Upload File
							</label>
						</div>
						
						<button type="submit" class="main-btn">Post</button>
					</form>
				</div>
			</div>
		</div>
	</div><!-- ask question -->
	
	<div class="share-wraper">
		<div class="share-options">
			<span class="close-btn"><i class="icofont-close-circled"></i></span>
			<h5><i>
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share"><path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path><polyline points="16 6 12 2 8 6"></polyline><line x1="12" y1="2" x2="12" y2="15"></line></svg></i>Share To!</h5>
			<form method="post">
				<textarea placeholder="Write Something"></textarea>
			</form>
			<ul>
				<li><a title="" href="#">Your Timeline</a></li>
				<li class="friends"><a title="" href="#">To Friends</a></li>
				<li class="socialz"><a class="active" title="" href="#">Social Media</a></li>
			</ul>
			<div style="display: block;" class="social-media">
				<ul>
					<li><a title="" href="#" class="facebook"><i class="icofont-facebook"></i></a></li>
					<li><a title="" href="#" class="twitter"><i class="icofont-twitter"></i></a></li>
					<li><a title="" href="#" class="instagram"><i class="icofont-instagram"></i></a></li>
					<li><a title="" href="#" class="pinterest"><i class="icofont-pinterest"></i></a></li>
					<li><a title="" href="#" class="youtube"><i class="icofont-youtube"></i></a></li>
					<li><a title="" href="#" class="dribble"><i class="icofont-dribbble"></i></a></li>
					<li><a title="" href="#" class="behance"><i class="icofont-behance-original"></i></a></li>
				</ul>
			</div>
			<div style="display: none;" class="friends-to">
				<div class="follow-men">
					<figure><img class="mCS_img_loaded" src="images/resources/user1.jpg" alt=""></figure>
					<div class="follow-meta">
						<h5><a href="#" title="">Jack Carter</a></h5>
						<span>family member</span>
					</div>
					<a href="#" title="">Share</a>
				</div>
				<div class="follow-men">
					<figure><img class="mCS_img_loaded" src="images/resources/user2.jpg" alt=""></figure>
					<div class="follow-meta">
						<h5><a href="#" title="">Xang Ching</a></h5>
						<span>Close Friend</span>
					</div>
					<a href="#" title="">Share</a>
				</div>
				<div class="follow-men">
					<figure><img class="mCS_img_loaded" src="images/resources/user3.jpg" alt=""></figure>
					<div class="follow-meta">
						<h5><a href="#" title="">Emma Watson</a></h5>
						<span>Matul Friend</span>
					</div>
					<a href="#" title="">Share</a>
				</div>
			</div>
			<button type="submit" class="main-btn">Publish</button>
		</div>
	</div><!-- share post -->

	<div class="chat-box">
		<div class="chat-head">
			<h4>New Messages</h4>
			<span class="clozed"><i class="icofont-close-circled"></i></span>
			<form Method="post">
				<input type="text" placeholder="To..">
			</form>
		</div>
		<div class="user-tabs">
			<ul class="nav nav-tabs">
			<li class="nav-item"><a class="active" href="#link1" data-toggle="tab">All Friends</a></li>

			<li class="nav-item"><a class="" href="#link2" data-toggle="tab">Active</a><em>3</em></li>
			<li class="nav-item"><a class="" href="#link3" data-toggle="tab">Groups</a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active fade show " id="link1" >
				<div class="friend">
					<a href="#" title="">
						<figure>
							<img src="images/resources/user1.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Oliver</span>
						<i class=""><img src="images/resources/user1.jpg" alt=""></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user2.jpg" alt="">
							<span class="status away"></span>
						</figure>
						<span>Amelia</span>
						<i class="icofont-check-circled"></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user3.jpg" alt="">
							<span class="status offline"></span>
						</figure>
						<span>George</span>
						<i class=""><img src="images/resources/user3.jpg" alt=""></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user4.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Jacob</span>
						<i class="icofont-check-circled"></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user5.jpg" alt="">
							<span class="status away"></span>
						</figure>
						<span>Poppy</span>
						<i class="icofont-check-circled"></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user6.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Sophia</span>
						<i class=""><img src="images/resources/user6.jpg" alt=""></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user7.jpg" alt="">
							<span class="status away"></span>
						</figure>
						<span>Leo king</span>
						<i class=""><img src="images/resources/user7.jpg" alt=""></i>
					</a>
				</div>
			</div>
			<div class="tab-pane fade" id="link2" >
				<div class="friend">
					<a href="#" title="">
						<figure>
							<img src="images/resources/user1.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Samu Jane</span>
						<i class=""><img src="images/resources/user1.jpg" alt=""></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user6.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Tina Mark</span>
						<i class=""><img src="images/resources/user6.jpg" alt=""></i>
					</a>
					<a href="#" title="">
						<figure>
							<img src="images/resources/user7.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Ak William</span>
						<i class=""><img src="images/resources/user7.jpg" alt=""></i>
					</a>
				</div>
			</div>
			<div class="tab-pane fade" id="link3">
				<div class="friend">
					<a href="#" title="">
						<figure class="group-chat">
							<img src="images/resources/user5.jpg" alt="">
							<img class="two" src="images/resources/user3.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>Boys World</span>
						<i class="icofont-check-circled"></i>
					</a>
					<a href="#" title="">
						<figure class="group-chat">
							<img src="images/resources/user2.jpg" alt="">
							<img class="two" src="images/resources/user3.jpg" alt="">
							<span class="status online"></span>
						</figure>
						<span>KK university Fellows</span>
						<i class="icofont-check-circled"></i>
					</a>
					<a href="#" title="">
						<figure class="group-chat">
							<img src="images/resources/user3.jpg" alt="">
							<img class="two" src="images/resources/user2.jpg" alt="">
							<span class="status away"></span>
						</figure>
						<span>Education World</span>
						<i class="icofont-check-circled"></i>
					</a>
				</div>
			</div>
		</div>
		</div>
		<div class="chat-card">
			<div class="chat-card-head">
				<img src="images/resources/user13.jpg" alt="">
				<h6>George Floyd</h6>
				<div class="frnd-opt">
					<div class="more">
						<div class="more-post-optns">
							<i class="">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg></i>
							<ul>
								<li>
									<i class="icofont-pen-alt-1"></i>Edit Post
									<span>Edit This Post within a Hour</span>
								</li>
								<li>
									<i class="icofont-ban"></i>Hide Chat
									<span>Hide This Post</span>
								</li>
								<li>
									<i class="icofont-ui-delete"></i>Delete Chat
									<span>If inappropriate Post By Mistake</span>
								</li>
								<li>
									<i class="icofont-flag"></i>Report
									<span>Inappropriate Chat</span>
								</li>
							</ul>
						</div>
					</div>
					<span class="close-mesage"><i class="icofont-close"></i></span>
				</div>
			</div>
			<div class="chat-list">
				<ul>
					<li class="me">
						<div class="chat-thumb"><img src="images/resources/chatlist1.jpg" alt=""></div>
						<div class="notification-event">
							<div class="chat-message-item">
								<figure><img src="images/resources/album5.jpg" alt=""></figure>
								<div class="caption">4.5kb <i class="icofont-download" title="Download"></i></div>
							</div>
							<span class="notification-date">
								<time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time>
								<i><img src="images/d-tick.png" alt=""></i>
							</span>
						</div>
					</li>
					<li class="me">
						<div class="chat-thumb"><img src="images/resources/chatlist1.jpg" alt=""></div>
						<div class="notification-event">
							<span class="chat-message-item">
								Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks
							</span>
							<span class="notification-date">
								<time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time>
								<i><img src="images/d-tick.png" alt=""></i>
							</span>
						</div>
					</li>
					<li class="you">
						<div class="chat-thumb"><img src="images/resources/chatlist2.jpg" alt=""></div>
						<div class="notification-event">
							<span class="chat-message-item">
								Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks
							</span>
							<span class="notification-date">
								<time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time>
								<i><img src="images/d-tick.png" alt=""></i>
							</span>
						</div>
					</li>
					<li class="me">
						<div class="chat-thumb"><img src="images/resources/chatlist1.jpg" alt=""></div>
						<div class="notification-event">
							<span class="chat-message-item">
								Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks
							</span>
							<span class="notification-date">
								<time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time>
								<i><img src="images/d-tick.png" alt=""></i>
							</span>
						</div>
					</li>
					
				</ul>
				<form class="text-box">
					<textarea placeholder="Write Mesage..."></textarea>
					<div class="add-smiles">
						<span><img src="images/smiles/happy-3.png" alt=""></span>
					</div>
					<div class="smiles-bunch">
						<i><img src="images/smiles/thumb.png" alt=""></i>
						<i><img src="images/smiles/angry-1.png" alt=""></i>
						<i><img src="images/smiles/angry.png" alt=""></i>
						<i><img src="images/smiles/bored-1.png" alt=""></i>
						<i><img src="images/smiles/confused-1.png" alt=""></i>
						<i><img src="images/smiles/wink.png" alt=""></i>
						<i><img src="images/smiles/weep.png" alt=""></i>
						<i><img src="images/smiles/tongue-out.png" alt=""></i>
						<i><img src="images/smiles/suspicious.png" alt=""></i>
						<i><img src="images/smiles/crying-1.png" alt=""></i>
						<i><img src="images/smiles/crying.png" alt=""></i>
						<i><img src="images/smiles/embarrassed.png" alt=""></i>
						<i><img src="images/smiles/emoticons.png" alt=""></i>
						<i><img src="images/smiles/happy-2.png" alt=""></i>
					</div>
					<button type="submit"><i class="icofont-paper-plane"></i></button>
				</form>
			</div>
		</div>
	</div><!-- chat box -->
    
</div>
<script src="js/main.min.js"></script> 
<script src="js/script.js"></script>

</body>

<!-- Mirrored from wpkixx.com/html/socimo/settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:47:13 GMT -->
</html>