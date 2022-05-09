<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="tag" %>    
    
<%@ page import="model.*" %> 
<%@ page import="java.util.ArrayList" %>    

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from wpkixx.com/html/socimo/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:45:01 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>Socimo | Social Media Network</title>
    <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16"> 
    
    <link rel="stylesheet" href="css/main.min.css">
	<link rel="stylesheet" href="css/lightbox.html">
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
	
	<div class="gap no-gap">
		<div class="top-area mate-black low-opacity">
			<div class="bg-image" style="background-image: url(images/resources/top-bg.jpg)"></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="post-subject">
							<div class="university-tag">
								<figure><img src="images/resources/user.jpg" alt=""></figure>
								<div class="uni-name">
									<h4>${uName.getName()} </h4>
									<c:if test = "${uName.getName() != user}">
									 <div class="stat-tools">
									 	<a href="./AddFriend?searchId=<%= request.getParameter("searchId")%>&reqType=1" class="like-to">Add Friend</a>
									 	<a href="./MessageServlet?receiverId=<%= request.getParameter("searchId")%>&isRead=0" class="like-to"><i class="icofont-ui-text-chat"></i></a>
									</div>
									</c:if>
								</div>
							</div>

							<ul class="nav nav-tabs post-detail-btn">
								 <li class="nav-item"><a class="active" href="#timeline" data-toggle="tab">Timeline</a></li>
								 <li class="nav-item"><a class="" href="#followers" data-toggle="tab">Friends</a></li>
								 <li class="nav-item"><a class="" href="#follow" data-toggle="tab">Saved Posts</a></li>
								<li class="nav-item"><a class="" href="#about" data-toggle="tab">About</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- top Head -->
	
	<section>
		<div class="gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div id="page-contents" class="row merged20">
							<div class="col-lg-8">
								<div class="tab-content">
								    <div class="tab-pane fade active show" id="timeline" >
										<div class="main-wraper">
									<span class="new-title">Create New Post</span>
									<div class="new-post">
										<form method="post">
											<i class="icofont-pen-alt-1"></i>
											<input type="text" placeholder="Create New Post">
										</form>
									</div>
								</div><!-- create new post -->
								<tag:forEach var="userpost" items="${userPosts}">
								<div class="main-wraper">
									<div class="user-post">
										<div class="friend-info">
											<figure>
												<em>
 												<svg style="vertical-align: middle;"  xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24"><path fill="#7fba00" stroke="#7fba00" d="M23,12L20.56,9.22L20.9,5.54L17.29,4.72L15.4,1.54L12,3L8.6,1.54L6.71,4.72L3.1,5.53L3.44,9.21L1,12L3.44,14.78L3.1,18.47L6.71,19.29L8.6,22.47L12,21L15.4,22.46L17.29,19.28L20.9,18.46L20.56,14.78L23,12M10,17L6,13L7.41,11.59L10,14.17L16.59,7.58L18,9L10,17Z"></path></svg></em>
												<img alt="" src="images/resources/user7.jpg">
											</figure>
											<div class="friend-name">
												<div class="more">
													<div class="more-post-optns">
														<i class="">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg></i>
														<ul>
															<li>
																<i class="icofont-ui-edit"></i>
																<a title="" class="share-to" href="EditPostPopup.jsp?postid=${userpost.getPostID()}&content=${userpost.getContent()}"> Edit Post</a>
																<span>Edit This Post within a Minute</span>
															</li>
															<li>
																<i class="icofont-ui-delete"></i>
																<a title="" class="delete-post" href="./DeletePostServlet?postId=${userpost.getPostID()}"> Delete Post</a>
																<span>If inappropriate Post By Mistake</span>
															</li>
														</ul>
													</div>
												</div>
												<ins>
													<a title="verified" href="time-line.html">${userpost.getName()}</a></ins>
												<span><i class="icofont-globe"></i> published : ${userpost.getLastUpdatedDate()}</span>
											</div>
											<div class="post-meta">
												<p>
													${userpost.getContent()}
												</p>
												<div class="stat-tools">
													<a href="./LikePostServlet?postId=${userpost.getPostID()}&likeCode=1" class="like-to"><i class="icofont-like"></i>${userpost.getNbLikes()} Like</a>
													<a href="./LikePostServlet?postId=${userpost.getPostID()}&likeCode=2" class="like-to"><i class="icofont-thumbs-down"></i> UnLike</a>
													<a title="" href="./SavedPostServlet?postId=${userpost.getPostID()}&type=1" class="save-to"><i class="icofont-save"></i> Save</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								</tag:forEach><!--end of create new post -->
										
								  	<div class="sp sp-bars"></div>  
									</div>
								  	<div class="tab-pane fade" id="followers">
										<div class="row col-xs-6 merged-10">
										
											<tag:forEach var="frienddetails" items="${friendDetails}">
											<div class="col-lg-4 col-md-4 col-sm-6">
												<div class="friendz">
												<figure><img src="images/resources/speak-1.jpg" alt=""></figure>
													<span>${frienddetails.getName()}</span>
													<ins>Bz University, India</ins>
													<a href="./AddFriend?frndId=${frienddetails.getUserID()}&userId=${uName.getUserID()}&reqType=2"><i class="icofont-close-circled"></i> Remove Friend</a>
												</div>
											</div>
											</tag:forEach><!--end of view friends -->
											
											<div class="col-lg-12">
												<div class="sp sp-bars"></div>
											</div>
										</div>
									</div>
									
									<div class="tab-pane fade" id="follow">
										<tag:if test="${savedPosts.size() <= 0}">
											<h1 class="sub-heading">No Posts Available</h1>
										</tag:if>
										<tag:forEach var="savedpost" items="${savedPosts}">
										<div class="main-wraper">
											<div class="user-post">
												<div class="friend-info">
													<figure>
														<em>
		 												<svg style="vertical-align: middle;"  xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24"><path fill="#7fba00" stroke="#7fba00" d="M23,12L20.56,9.22L20.9,5.54L17.29,4.72L15.4,1.54L12,3L8.6,1.54L6.71,4.72L3.1,5.53L3.44,9.21L1,12L3.44,14.78L3.1,18.47L6.71,19.29L8.6,22.47L12,21L15.4,22.46L17.29,19.28L20.9,18.46L20.56,14.78L23,12M10,17L6,13L7.41,11.59L10,14.17L16.59,7.58L18,9L10,17Z"></path></svg></em>
														<img alt="" src="images/resources/user7.jpg">
													</figure>
													<div class="friend-name">
														<div class="more">
															<div class="more-post-optns">
																<i class="">
																<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg></i>
																<ul>
																	<li>
																		<i class="icofont-ui-edit"></i>
																		<a title="" class="share-to" href="#"> Edit Post</a>
																		<span>Edit This Post within a Minute</span>
																	</li>
																	<li>
																		<i class="icofont-ui-delete"></i>
																		<a title="" class="delete-post" href="./DeletePostServlet?postId=${savedpost.getPostID()}"> Delete Post</a>
																		<span>If inappropriate Post By Mistake</span>
																	</li>
																</ul>
															</div>
														</div>
														<ins>
															<a title="verified" href="time-line.html">${savedpost.getName()}</a></ins>
														<span><i class="icofont-globe"></i> published : ${savedpost.getLastUpdatedDate()}</span>
													</div>
													<div class="post-meta">
														<p>
															${savedpost.getContent()}
														</p>
														<div class="stat-tools">
															<a href="./LikePostServlet?postId=${savedpost.getPostID()}&likeCode=1" class="like-to"><i class="icofont-like"></i>${savedpost.getNbLikes()} Like</a>
															<a href="./LikePostServlet?postId=${savedpost.getPostID()}&likeCode=2" class="like-to"><i class="icofont-thumbs-down"></i> UnLike</a>
															<a href="./SavedPostServlet?postId=${savedpost.getPostID()}&type=2" class="save-to"> Unsave</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										</tag:forEach><!--end of saved posts -->
									</div>
								  	
								  	<div class="tab-pane fade " id="about">
								  		<div class="main-wraper">
											<h5 class="main-title">Personal</h5>
											<div class="info-block-list">
												<ul>
													<li>Nickname: <span>${userdetails.getNickname()}</span></li>
													<li>Date of Birth: <span>${userdetails.getDob()}</span></li>
													<li>Languages: <span>${userdetails.getLanguages()}</span></li>
													<li>Education: <span>${userdetails.getEducation()}</span></li>
													<li>Occupation: <span>${userdetails.getOccupation()}</span></li>
													<li>Relationship Status: <span>${userdetails.getrStatus()}</span></li>
													<li>Website: <span>${userdetails.getWebsite()}</span></li>
													<li>Bio: <span>${userdetails.getBio()}</span></li>
													<li>Country: <span>${userdetails.getCountry()}</span></li>
												</ul>	
											</div>	
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<aside class="sidebar static right">
									<div class="widget stick-widget">
										<h4 class="widget-title">Suggested For You</h4>
										<ul class="followers" >
											<tag:forEach var="suggestedFrnds" items="${suggestedFrnds}">
											<li>
												<figure><img alt="" src="images/resources/friend-avatar.jpg"></figure>
												<div class="friend-meta">
													<h4>${suggestedFrnds.getName()}</h4>
													<a class="underline" href="./AddFriend?searchId=${suggestedFrnds.getUserID()}&reqType=1">Add Friend</a>
												</div>
											</li>
											</tag:forEach>
										</ul>	
									</div>
								</aside>
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
					<span class="">&copy; copyright All rights reserved by socimo 2020</span>
				</div>
			</div>
		</div>
	</div><!-- bottombar -->
	
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
			<div class="tab-content">
				<div class="tab-pane active fade show" id="notifications">
					<h4><i class="icofont-bell-alt"></i> notifications</h4>
					<ul class="notificationz">
						<tag:forEach var="notifications" items="${notifications}">
						<li>
							<figure><img src="images/resources/user5.jpg" alt=""></figure>
							<div class="mesg-info">
								<span>${notifications.getName()}</span>
								<p> send you a ${notifications.getType()}<p>
								<div class="stat-tools">
								 	<a href="#" class="like-to">Confirm</a>
								 	<a href="#" class="like-to">Reject</a>
								</div>
							</div>
						</li>
						</tag:forEach>
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
					<form method="post" action="./PostServlet" class="c-form">
						<textarea id="emojionearea1" name="content" placeholder="What's On Your Mind?" ></textarea>
						<button type="submit" class="main-btn">Publish</button>
					</form>
				</div>
			</div>
		</div>
	</div><!-- New post popup -->
	
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
	
	<div class="modal fade" id="img-comt">
		<div class="modal-dialog">
		  <div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal">×</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="row merged">
					<div class="col-lg-9">
						<div class="pop-image">
							<div class="pop-item">
								<div class="action-block">
                                    <a class="action-button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-tag"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"/><line x1="7" y1="7" x2="7.01" y2="7"/></svg>
                                    </a>
                                    <a class="action-button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>
                                    </a>
                                    <a class="action-button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-down"><line x1="12" y1="5" x2="12" y2="19"/><polyline points="19 12 12 19 5 12"/></svg>
                                    </a>
                                    <a class="action-button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical"><circle cx="12" cy="12" r="1"/><circle cx="12" cy="5" r="1"/><circle cx="12" cy="19" r="1"/></svg>
                                    </a>
                                </div>
								<figure><img src="images/resources/blog-detail.jpg" alt=""></figure>
								<div class="stat-tools">
									<div class="box">
									  <div class="Like"><a class="Like__link"><i class="icofont-like"></i> Like</a>
										<div class="Emojis">
										  <div class="Emoji Emoji--like">
											<div class="icon icon--like"></div>
										  </div>
										  <div class="Emoji Emoji--love">
											<div class="icon icon--heart"></div>
										  </div>
										  <div class="Emoji Emoji--haha">
											<div class="icon icon--haha"></div>
										  </div>
										  <div class="Emoji Emoji--wow">
											<div class="icon icon--wow"></div>
										  </div>
										  <div class="Emoji Emoji--sad">
											<div class="icon icon--sad"></div>
										  </div>
										  <div class="Emoji Emoji--angry">
											<div class="icon icon--angry"></div>
										  </div>
										</div>
									  </div>
									</div>
									<div class="box">
										<div class="Emojis">
										  <div class="Emoji Emoji--like">
											<div class="icon icon--like"></div>
										  </div>
										  <div class="Emoji Emoji--love">
											<div class="icon icon--heart"></div>
										  </div>
										  <div class="Emoji Emoji--haha">
											<div class="icon icon--haha"></div>
										  </div>
										  <div class="Emoji Emoji--wow">
											<div class="icon icon--wow"></div>
										  </div>
										  <div class="Emoji Emoji--sad">
											<div class="icon icon--sad"></div>
										  </div>
										  <div class="Emoji Emoji--angry">
											<div class="icon icon--angry"></div>
										  </div>
										</div>
									  </div>
									<a title="" href="#" class="share-to"><i class="icofont-share-alt"></i> Share</a>
									<div class="emoji-state">
										<div class="popover_wrapper">
											<a class="popover_title" href="#" title=""><img alt="" src="images/smiles/thumb.png"></a>
											<div class="popover_content">
												<span><img alt="" src="images/smiles/thumb.png"> Likes</span>
												<ul class="namelist">
													<li>Jhon Doe</li>
													<li>Amara Sin</li>
													<li>Sarah K.</li>
													<li><span>20+ more</span></li>
												</ul>
											</div>
										</div>
										<div class="popover_wrapper">
											<a class="popover_title" href="#" title=""><img alt="" src="images/smiles/heart.png"></a>
											<div class="popover_content">
												<span><img alt="" src="images/smiles/heart.png"> Love</span>
												<ul class="namelist">
													<li>Amara Sin</li>
													<li>Jhon Doe</li>
													<li><span>10+ more</span></li>
												</ul>
											</div>
										</div>
										<div class="popover_wrapper">
											<a class="popover_title" href="#" title=""><img alt="" src="images/smiles/smile.png"></a>
											<div class="popover_content">
												<span><img alt="" src="images/smiles/smile.png"> Happy</span>
												<ul class="namelist">
													<li>Sarah K.</li>
													<li>Jhon Doe</li>
													<li>Amara Sin</li>
													<li><span>100+ more</span></li>
												</ul>
											</div>
										</div>
										<div class="popover_wrapper">
											<a class="popover_title" href="#" title=""><img alt="" src="images/smiles/weep.png"></a>
											<div class="popover_content">
												<span><img alt="" src="images/smiles/weep.png"> Dislike</span>
												<ul class="namelist">
													<li>Danial Carbal</li>
													<li>Amara Sin</li>
													<li>Sarah K.</li>
													<li><span>15+ more</span></li>
												</ul>
											</div>
										</div>
										<p>10+</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="commentbar">
							<div class="user">
								<figure><img src="images/resources/user1.jpg" alt=""></figure>
								<div class="user-information">
									<h4><a href="#" title="">Danile Walker</a></h4>
									<span>2 hours ago</span>
								</div>
								<a href="#" title="Follow" data-ripple="">Follow</a>
							</div>
							<div class="we-video-info">
								<ul>
									<li>
										<span title="Comments" class="liked">
											<i>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-thumbs-up"><path d="M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3"></path></svg></i>
											<ins>52</ins>
										</span>
									</li>
									<li>
										<span title="Comments" class="comment">
											<i>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg></i>
											<ins>52</ins>
										</span>
									</li>

									<li>
										<span>
											<a title="Share" href="#" class="">
												<i>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share-2"><circle cx="18" cy="5" r="3"></circle><circle cx="6" cy="12" r="3"></circle><circle cx="18" cy="19" r="3"></circle><line x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line><line x1="15.41" y1="6.51" x2="8.59" y2="10.49"></line></svg></i>
											</a>
											<ins>20</ins>
										</span>	
									</li>
								</ul>
								<div class="users-thumb-list">
									<a href="#" title="" data-toggle="tooltip" data-original-title="Anderw">
										<img src="images/resources/userlist-1.jpg" alt="">  
									</a>
									<a href="#" title="" data-toggle="tooltip" data-original-title="frank">
										<img src="images/resources/userlist-2.jpg" alt="">  
									</a>
									<a href="#" title="" data-toggle="tooltip" data-original-title="Sara">
										<img src="images/resources/userlist-1.jpg" alt="">  
									</a>
									<a href="#" title="" data-toggle="tooltip" data-original-title="Amy">
										<img src="images/resources/userlist-2.jpg" alt="">  
									</a>
									<span><strong>You</strong>, <b>Sarah</b> and <a title="" href="#">24+ more</a> liked</span>
								</div>
							</div>
							<div class="new-comment" style="display: block;">
								<form method="post">
									<input type="text" placeholder="write comment">
									<button type="submit"><i class="icofont-paper-plane"></i></button>
								</form>
								<div class="comments-area">
									<ul>
										<li>
											<figure><img alt="" src="images/resources/user1.jpg"></figure>
											<div class="commenter">
												<h5><a title="" href="#">Jack Carter</a></h5>
												<span>2 hours ago</span>
												<p>
													i think that some how, we learn who we really are and then live with that decision, great post!
												</p>
												<span>you can view the more detail via link</span>
												<a title="" href="#">https://www.youtube.com/watch?v=HpZgwHU1GcI</a>
											</div>
											<a title="Like" href="#"><i class="icofont-heart"></i></a>
											<a title="Reply" href="#" class="reply-coment"><i class="icofont-reply"></i></a>
										</li>
										<li>
											<figure><img alt="" src="images/resources/user2.jpg"></figure>
											<div class="commenter">
												<h5><a title="" href="#">Ching xang</a></h5>
												<span>2 hours ago</span>
												<p>
													i think that some how, we learn who we really are and then live with that decision, great post!
												</p>
											</div>
											<a title="Like" href="#"><i class="icofont-heart"></i></a>
											<a title="Reply" href="#" class="reply-coment"><i class="icofont-reply"></i></a>
										</li>
										<li>
											<figure><img alt="" src="images/resources/user3.jpg"></figure>
											<div class="commenter">
												<h5><a title="" href="#">Danial Comb</a></h5>
												<span>2 hours ago</span>
												<p>
													i think that some how, we learn who we really are and then live with that decision, great post!
												</p>
											</div>
											<a title="Like" href="#"><i class="icofont-heart"></i></a>
											<a title="Reply" href="#" class="reply-coment"><i class="icofont-reply"></i></a>
										</li>
										<li>
											<figure><img alt="" src="images/resources/user4.jpg"></figure>
											<div class="commenter">
												<h5><a title="" href="#">Jack Carter</a></h5>
												<span>2 hours ago</span>
												<p>
													i think that some how, we learn who we really are and then live with that decision, great post!
												</p>
											</div>
											<a title="Like" href="#"><i class="icofont-heart"></i></a>
											<a title="Reply" href="#" class="reply-coment"><i class="icofont-reply"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
		  </div>
		</div>
    </div><!-- The Scrolling Modal image with comment -->
		
</div>
	
	<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */

		document.getElementById("myDropdown").classList.toggle("show");
		
		function filterFunction() {
		  var input, filter, ul, li, a, i;
		  input = document.getElementById("myInput");
		  filter = input.value.toUpperCase();
		  div = document.getElementById("myDropdown");
		  a = div.getElementsByTagName("a");
		  for (i = 0; i < a.length; i++) {
		    txtValue = a[i].textContent || a[i].innerText;
		    if (txtValue.toUpperCase().indexOf(filter) > -1) {
		      a[i].style.display = "";
		    } else {
		      a[i].style.display = "none";
		    }
		  }
		}
	</script>
	
	<script src="js/main.min.js"></script>
	<script src="js/script.js"></script>
	
</body>	

<!-- Mirrored from wpkixx.com/html/socimo/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:45:52 GMT -->
</html>