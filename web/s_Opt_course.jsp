<%-- 
    Document   : s_Opt_course
    Created on : Apr 8, 2019, 4:29:05 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html lang="en">

<head>
	<title>Update student data table | Online Course Portal</title>
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
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span><%out.print(uid);%></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
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
                                                 <li><a href="s_profile.jsp" class=""><i class="lnr lnr-user"></i>View Profile</a></li>
                                                 <li><a href="s_Opt_course.jsp" class="active"><i class="fa fa-search"></i>Opt Course</a></li>
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
					<h3 class="page-title">Apply for Course</h3>
                                          <% 
                                             try
                                             {
                                             String msg1 = (String)session.getAttribute("msg1");
                                         if(msg1.equals("failed"))
                                         {
                                        %>   <%@ include file = "warningalert.jsp" %>
                                        <% }
}
catch(Exception e){

}
                                         %>
					<div class="row">
						<div class="col-md-12">
							<!-- BUTTONS -->
							
							<!-- END BUTTONS -->
							<!-- INPUTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title"></h3>
								</div>
								<div class="panel-body">
                                                                   <form action="course_optingAction.jsp" method="POST">
                                                                                
                                                                                
                                                                                
                                                                                
                                                                           <table class="table table-striped">
										<thead>
											<tr>
												<th>sl no.</th>
												<th>course name</th>
                                                                                                <th>about course</th>
                                                                                                 <th>instructor_name</th>
                                                                                                  <th>duration</th>
                                                                                                   <th>department</th>
                                                                                                
											</tr>
										</thead>
										<tbody>
										<%
                                                                                    ResultSet rs=DAL.DBConnect.SelectData("SELECT * FROM `course`");
                                                                                    ResultSet rs1=DAL.DBConnect.SelectData("SELECT * FROM course INNER JOIN instructor on course.i_id=instructor.i_id");
                                                                                    int i=1;
                                                                                            while(rs.next()&&rs1.next()){
                                                                                    %>
                                                                                    <tr>
                                                                                        <td><%out.print(i);i++;%></td>
                                                                                        <td><%out.print(rs.getString("c_name"));%></td>
                                                                                        <td><%out.print(rs.getString("about_course"));%></td>
                                                                                        <td><%out.print(rs1.getString("i_name"));%></td>
                                                                                        <td><%out.print(rs.getString("duration"));%></td>
                                                                                        <td><%out.print(rs.getString("dept"));%></td>
                                                                                            
                                                                                             
                                                                                             <td><a href=course_optingAction.jsp?s_id=<%out.print(s_id);%>&c_id=<%out.print(rs.getString("c_id"));%> class="btn btn-primary">Register</a></td>
                                                                                            <!-- <td><a href=deletecoursedata.jsp?c_id=<%//out.print(rs.getString("c_id"));%> class="btn btn-danger">delete</a></td>-->
                                                                                    </tr>
                                                                                    <% } %>
										</tbody>
									</table>     
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                               
									
                                                                    </form>
								</div>
							</div>
							<!-- END INPUTS -->
							<!-- INPUT SIZING -->
							
							<!-- END INPUT SIZING -->
						</div>
						<div class="col-md-6">
							<!-- LABELS -->
							
							<!-- END LABELS -->
							<!-- PROGRESS BARS -->
							
							<!-- END PROGRESS BARS -->
							<!-- INPUT GROUPS -->
						
							<!-- END INPUT GROUPS -->
							<!-- ALERT MESSAGES -->
							
							<!-- END ALERT MESSAGES -->
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
