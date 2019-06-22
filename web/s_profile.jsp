<%-- 
    Document   : s_profile
    Created on : Apr 8, 2019, 3:03:40 PM
    Author     : test
--%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html lang="en">

<head>
	<title>Student Tables | Online Course Portal</title>
        <%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
				String uid = (String)session.getAttribute("user");
                                String s_id = (String)session.getAttribute("s_id");
				if (uid == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <jsp:forward page="Login.jsp"/>
		<%	
				}
				
		%> 
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="s_home.jsp"><img src="assets/img/logo.png" alt="ocp Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form>
			
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user1.png" class="img-circle" alt="Avatar"> <span><%out.print(uid);%></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="s_profile.jsp"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								
								<li><a href="Logout.jsp"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="s_home.jsp" class=""><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
                                                 <li><a href="s_profile.jsp" class="active"><i class="lnr lnr-user"></i>View Profile</a></li>
                                                 <li><a href="s_Opt_course.jsp" class=""><i class="fa fa-search"></i>Opt Course</a></li>
                                                <li><a href="s_opted_courses.jsp" class=""><i class="fa fa-line-chart"></i>Opted Course</a></li>
                                                <li><a href="s_test.jsp" class=""><i class="lnr lnr-spell-check"></i>Test</a></li>
                                                <li><a href="s_viewCertificates.jsp" class=""><i class="lnr lnr-graduation-hat"></i>Certifications</a></li>
                                                <li><a href="i_viewintracts.jsp" class=""><i class="lnr lnr-bubble"></i>Queries</a></li>
							
				
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<div class="panel panel-profile">
						<div class="">
                                                    <% 
                                             try
                                             {
                                             String msg = (String)session.getAttribute("msg");
                                         if(msg.equals("sucess"))
                                         {
                                        %>   <%@ include file = "sucessalert.jsp" %>
                                        <% }
}
catch(Exception e){

}
                                         %>
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main"><% ResultSet rs1 = DAL.DBConnect.SelectData("SELECT * FROM `student` where s_id="+s_id);
                                                                                                        rs1.next();%>
										<img src="assets/img/user.png" class="img-circle" alt="Avatar">
										<h3 class="name"><%out.print(rs1.getString("s_name")); %></h3>
										<span class="online-status status-available">Available</span>
									</div>
									<div class="profile-stat">
										
									</div>
								</div> 
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
                                                                            <!--<div class="text-left"> Basic Info</div> <div class="text-right"><a href=s_UpdateStudentData.jsp?s_id=<% out.print(rs1.getString("s_id")); %> class="lnr lnr-pencil"></a></div> -->
										<ul class="list-unstyled list-justify">
                                                                                    <li><b class="heading" >Basic Info</b> <span><div class="text-right"><a href=s_UpdateStudentData.jsp?s_id=<% out.print(rs1.getString("s_id")); %> class="lnr lnr-pencil"></a></span></li>
											<li>Gender <span><%out.print(rs1.getString("gender")); %></span></li>
                                                                                    <li>Mobile <span><%out.print(rs1.getString("s_mob")); %></span></li>
											<li>Email <span><%out.print(rs1.getString("s_email")); %></span></li>
                                                                                        <li>Password <span> <div class="text-center"><a href=s_changepasswd.jsp?s_id=<% out.print(rs1.getString("s_id")); %> class="btn btn-primary">Change Password</a></div></span></li>
											
										</ul>
									</div>
                                                                                       
									<div class="profile-info">
										<h4 class="heading">Social</h4>
										<ul class="list-inline social-icons">
											<li><a href="https://www.facebook.com/onlinecourses.ooo/" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
											<li><a href="https://twitter.com/crunchadeal?lang=en" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
											
											<li><a href="https://github.com/anilchalissery/OnlineCoursePortal" class="github-bg"><i class="fa fa-github"></i></a></li>
										</ul>
									</div>
                                                                        
									<div class="profile-info">
										<!--<h4 class="heading">About</h4>
										<p>Interactively fashion excellent information after distinctive outsourcing.</p>-->
									</div>
									
								</div>
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							<div class="profile-right">
								<h4 class="heading">Opted Courses</h4>
                                                                <%@ include file = "optedcourses.jsp" %>
                                                                
						
							</div>
							<!-- END RIGHT COLUMN -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>
