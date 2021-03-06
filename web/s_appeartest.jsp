<%-- 
    Document   : s_Opt_course
    Created on : Apr 8, 2019, 4:29:05 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
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
				
				
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span><%out.print(uid);%></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="s_profile.jsp"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
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
                                                 <li><a href="s_Opt_course.jsp" class=""><i class="fa fa-search"></i>Opt Course</a></li>
                                                <li><a href="s_opted_courses.jsp" class=""><i class="fa fa-line-chart"></i>Opted Course</a></li>
                                                <li><a href="s_test.jsp" class="active"><i class="lnr lnr-spell-check"></i>Test</a></li>
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
					<h3 class="page-title">TEST BEGINS</h3>
                                          
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
                                                                   <form action="appeartestAction.jsp" method="POST">
                                                                     <%
                                                                     String c_id=request.getParameter("c_id");
                                                                     ResultSet rs1= DBConnect.SelectData("SELECT * FROM `testresults` WHERE c_id="+c_id+" and s_id="+s_id);
                                                                     if(rs1.next()== true)
                                                                     {
                                                                         session.setAttribute("msg","retest");
                                                                         response.sendRedirect("s_test.jsp");
                                                                     }
                                                                     ResultSet rs= DBConnect.SelectData("SELECT * FROM `course` WHERE c_id="+c_id);
                                                                     rs.next();
                                                                     %>           
                                                                     <input type="text" class="form-control" value="<%out.print(rs.getString("c_name"));%>">           
                                                                      <br>
                                                                     <%ResultSet rs2=DBConnect.SelectData("SELECT * FROM `test` WHERE c_id="+c_id); 
                                                                     
                                                                     int i=1;
                                                                     if(rs2.next()){
                                                                         while(rs2.next()){%>
                                                                           <br><input type="text" class="form-control" name="<%out.print(rs2.getString("test_id"));%>" value="<%out.print(rs2.getString("q_no")+". ");%><%out.print(rs2.getString("Question"));%>">               
                                                                         <br>  <input type="radio"  name="q<%out.print(i);%>" value="1"><%out.print(rs2.getString("oa"));%>
                                                                           <input type="radio"  name="q<%out.print(i);%>" value="2"><%out.print(rs2.getString("ob"));%>
                                                                           <input type="radio"  name="q<%out.print(i);%>" value="3"><%out.print(rs2.getString("oc"));%>
                                                                           <input type="radio"  name="q<%out.print(i);%>" value="4"><%out.print(rs2.getString("od"));%><br>
                                                                <%       i++;  }


                                                                             %>           
                                                                             <input type="hidden" name="noQ" value="<%out.print(i-1);%>">
                                                                             <input type="hidden" name="c_id" value="<%out.print(c_id);%>">
                                                                             <br><input type="Submit" class="btn btn-primary">
								<%	}
else{ %> <p>Test for this course is not added currently .</p><%
} %>
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
