<%-- 
    Document   : approveInstructor
    Created on : Apr 22, 2019, 8:17:23 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

<head>
	<title>Instructor table | Online Course Portal</title>
        <%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
				String uid = (String)session.getAttribute("user");
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
				<a href="home.jsp"><img src="assets/img/logo.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					
				</form>
				<!--<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
				</div>-->
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span><%out.print(uid);%></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								
								<li><a href="Logout.jsp"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
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
						<li><a href="home.jsp" class=""><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
					
						<li><a href="approveInstructor.jsp" class="active"><i class="lnr lnr-alarm"></i> <span>Approve Instructors</span></a></li>
				                <li><a href="studenttables.jsp" class=""><i class="lnr lnr-dice"></i>Student Table</a></li>
									<li><a href="instructortables.jsp" class=""><i class="lnr lnr-dice"></i>Instructor Table</a></li>
									<li><a href="courseoptedtable.jsp" class=""><i class="lnr lnr-dice"></i>Course opted Table</a></li>
                                                                        <li><a href="coursedatatable.jsp" class=""><i class="lnr lnr-dice"></i>Course Table</a></li>
                                                                        <li><a href="depttable.jsp" class=""><i class="lnr lnr-dice"></i>Departments table</a></li>
                                                                        <li><a href="intract1.jsp" class=""><i class="lnr lnr-dice"></i>Chat table</a></li>
				
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
					<!--<h3 class="page-title">Tables</h3>-->
					
					<div class="row">
						
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
                                            
						<div class="col-md-12">
							<!-- TABLE HOVER -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Instructor Table</h3>
								</div>
								<div class="panel-body">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>Instructor Name</th>
                                                                                                <th>Gender</th>
                                                                                                <th>Mobile No</th>
                                                                                                <th>Email</th>
                                                                                               
                                                                                                <th>Status</th>
                                                                                                
                                                                                                <th></th>
                                                                                                           
                                                                   

											</tr>
										</thead>
										<tbody><% ResultSet rs2 = DAL.DBConnect.SelectData("SELECT * FROM `instructor`");%>
										<%while(rs2.next()){ %><tr>
                
                                                                                                            <td><%out.print(rs2.getString("i_name")); %></td>
                                                                                                            <td><%out.print(rs2.getString("gender")); %></td>
                                                                                                             <td><%out.print(rs2.getString("i_mob")); %></td>
                                                                                                            <td><%out.print(rs2.getString("i_email")); %></td>
                                                                                                           
                                                                                                           <td><%out.print(rs2.getString("status")); %></td>
                                                                                                            <td><a href=approveInstructorAction.jsp?i_id=<% out.print(rs2.getString("i_id")); %> class="btn btn-primary">Approve</a></td>
                                                                                                            <td><a href=rejectInstructorAction.jsp?i_id=<% out.print(rs2.getString("i_id")); %> class="btn btn-danger">Reject</a></td>

                                                                                                            <% } %>

                                                                                                        </tr>
                                                                                       
										</tbody>
									</table>
								</div>
							</div>
							<!-- END TABLE HOVER -->
                                                        
						</div>
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
