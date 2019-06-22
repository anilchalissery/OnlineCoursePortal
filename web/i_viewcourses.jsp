<%-- 
    Document   : i_viewcourses
    Created on : Apr 13, 2019, 9:23:21 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

<head>
	<title>All Course  | Online Course Portal</title>
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
				<a href="i_home.jsp"><img src="assets/img/logo.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">

				</form>
			<!--	<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
				</div> -->
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span><%out.print(uid);%></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
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
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll"><%String i_id = (String)session.getAttribute("i_id");
                    ResultSet rss=DBConnect.SelectData("select * from instructor where i_id="+i_id);
                    rss.next();
                    String status = rss.getString("status");
                    %>
				<nav>
					<ul class="nav">
						<li><a href="i_home.jsp" class=""><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
                                                <li><a href="i_profile.jsp" class=""><i class="lnr lnr-user"></i>View Profile</a></li>
						<%if(status.equals("Approved")){%><li><a href="i_approveStudents.jsp" class=""><i class="lnr lnr-alarm"></i>Approve Registration</a></li>
				                
                                                <li><a href="i_addCourse.jsp" class=""><i class="lnr lnr-file-add"></i>Add Course</a></li>
                                                <li><a href="i_viewcourses.jsp" class="active"><i class="lnr lnr-enter"></i>View added Courses</a></li>
                                                <li><a href="i_viewStudents.jsp" class=""><i class="lnr lnr-users"></i>View Students</a></li>
                                                <li><a href="i_createQuestionpaper.jsp" class=""><i class="lnr lnr-pencil"></i>Create test</a></li>
                                                <li><a href="i_viewResults.jsp" class=""><i class="lnr lnr-graduation-hat"></i>View test Results</a></li>
                                              <!--  <li><a href="i_answer.jsp" class=""><i class="lnr lnr-bubble"></i>Answer Students</a></li>-->
                                                <li><a href="i_viewintracts.jsp" class=""><i class="lnr lnr-bubble"></i>Interacts</a></li>
						<% } %>
					</ul>
				</nav>
			</div>
		</div>
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
				<!--	<h3 class="page-title">Tables</h3> -->
					
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
							<!-- TABLE STRIPED -->
							
<%@page import="java.sql.ResultSet"%>

<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Courses</h3>
								</div>
								<div class="panel-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>sl no.</th>
												<th>course name</th>
                                                                                                <th>about course</th>
                                                                                                  <th>duration</th>
                                                                                                   <th>department</th>
                                                                                                    <th>file</th>
                                                                                                    <th></th>
                                                                                                    <th><a href="i_addCourse.jsp" class="btn btn-primary">Insert</a></th>
												
											</tr>
										</thead>
										<tbody><%//String i_id = (String)session.getAttribute("i_id");%>
										<%ResultSet rs=DAL.DBConnect.SelectData("SELECT * FROM `course` where i_id="+i_id);
                                                                                 //   ResultSet rs1=DAL.DBConnect.SelectData("SELECT * FROM course INNER JOIN instructor on course.i_id=instructor.i_id");
                                                                                                                                                              int i=1;
                                                                                            while(rs.next()){
                                                                                    %>
                                                                                    <tr>
                                                                                        <td><%out.print(i);i++;%></td>
                                                                                        <td><%out.print(rs.getString("c_name"));%></td>
                                                                                         <td><%out.print(rs.getString("about_course"));%></td>
                                                                                           <td><%out.print(rs.getString("duration"));%></td>
                                                                                            <td><%out.print(rs.getString("dept"));%></td>
                                                                                             <td><%out.print(rs.getString("datafile"));%></td>
                                                                                             <td><a href=i_addmaterials.jsp?c_id=<%out.print(rs.getString("c_id"));%> class="btn btn-warning">upload data</a></td>
                                                                                             <td><a href=i_UpdateCourseDataTable.jsp?c_id=<%out.print(rs.getString("c_id"));%> class="btn btn-warning">update</a></td>
                                                                                             <td><a href=deletecoursedata.jsp?c_id=<%out.print(rs.getString("c_id"));%> class="btn btn-danger">delete</a></td>
                                                                                    </tr>
                                                                                    <% } %>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END TABLE STRIPED -->
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
