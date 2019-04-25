<%-- 
    Document   : i_left_sidebar
    Created on : Apr 11, 2019, 9:49:04 AM
    Author     : test
--%>
<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
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
                                                <li><a href="i_viewcourses.jsp" class=""><i class="lnr lnr-enter"></i>View added Courses</a></li>
                                                <li><a href="i_viewStudents.jsp" class=""><i class="lnr lnr-users"></i>View Students</a></li>
                                              <!--  <li><a href="i_answer.jsp" class=""><i class="lnr lnr-bubble"></i>Answer Students</a></li>-->
                                                <li><a href="i_viewintracts.jsp" class=""><i class="lnr lnr-bubble"></i>Interacts</a></li>
						<% } %>
					</ul>
				</nav>
			</div>
		</div>