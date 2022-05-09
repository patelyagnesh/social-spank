<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="tag" %>    
    
<%@ page import="model.*" %> 
<%@ page import="java.util.ArrayList" %>   

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from wpkixx.com/html/socimo/notifications.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:48:53 GMT -->
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
		<div class="gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div id="page-contents" class="row merged20">
							<div class="col-lg-8">
								<div class="main-wraper">
									<h3 class="main-title">All Notifications</h3>
									<div class="editing-interest">
										<div class="notification-box">
											<ul>
											<tag:forEach var="notifications" items="${notifications}">
											<c:choose>
												<c:when test = "${notifications.getType().equals('Friend Request')}">
													<li>
														<figure><img src="images/resources/friend-avatar.jpg" alt=""></figure>
														<div class="mesg-info">
															<span>${notifications.getName()}</span>
															<p>send you a ${notifications.getType()}</p>
															<div class="stat-tools">
															 	<a href="./FriendRequestServlet?senderid=${notifications.getSenderID()}&frndReqId=${notifications.getNotiSrcID()}&code=1" class="like-to">Confirm</a>
															 	<a href="./FriendRequestServlet?frndReqId=${notifications.getNotiSrcID()}&code=2" class="like-to">Reject</a>
															</div>
														</div>
														<i class="del icofont-close-circled" title="Remove"></i>
													</li>
												</c:when>
												<c:otherwise>
													<li>
														<figure><img src="images/resources/friend-avatar.jpg" alt=""></figure>
														<div class="mesg-info">
															<a href = "./MessageServlet?receiverId=${notifications.getSenderID()}&notiId=${notifications.getNotiID()}&isRead=1"><span>${notifications.getName()}</span><p>send you a ${notifications.getType()}</p></a>
														</div>
														<i class="del icofont-close-circled" title="Remove"></i>
													</li>
												</c:otherwise>
											</c:choose>
											</tag:forEach>
											</ul>
										</div>
										<div class="sp sp-bars"></div>
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
					<span class="">&copy; copyright All rights reserved by Socimo 2020</span>
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
	<script src="js/sparkline.js"></script>
	<script src="js/chart.js"></script>
	<script src="js/script.js"></script>
	

</body>	

<!-- Mirrored from wpkixx.com/html/socimo/notifications.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 Apr 2021 05:48:53 GMT -->
</html>