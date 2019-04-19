<%-- 
    Document   : optedcourses
    Created on : Apr 9, 2019, 4:02:51 PM
    Author     : test
--%>
<%@page import="java.sql.ResultSet"%>
 <%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
				
                            //    String s_id = (String)session.getAttribute("s_id");
				%>
<table class="table table-hover">
										<thead>
											<tr>
												<th>Course name</th>
                                                                                                <th>About course</th>
                                                                                               <!--  <th>instructor_name</th>-->
                                                                                                  <th>Duration</th>
                                                                                                   <th>Department</th>
                                                                                                 <th>Review</th>
                                                                                                 <th>Status</th>
                                                                                             <!--    <th><a href="course_opting.jsp" class="btn btn-primary">Insert</a></th> -->
											</tr>
										</thead>
										<tbody>
											 <%
               ResultSet rs5=DAL.DBConnect.SelectData("SELECT * FROM `course_opted` INNER JOIN student on course_opted.s_id=student.s_id where student.s_id="+s_id);
           
          
           //
           while(rs5.next()) {
          ResultSet rs6=DAL.DBConnect.SelectData("SELECT * FROM `course_opted` INNER JOIN course on course_opted.c_id=course.c_id where course.c_id="+rs5.getString("c_id")+" and course_opted.s_id="+rs5.getString("s_id"));
                while(rs6.next()) {
           %>
           <tr>
               <td><%out.print(rs6.getString("c_name"));%></td>
               <td><%out.print(rs6.getString("about_course"));%></td>
            <!--   <td><%//out.print(rs1.getString("i_name"));%></td> -->
                <td><%out.print(rs6.getString("duration"));%></td>
                <td><%out.print(rs6.getString("dept"));%></td>
                  <td><%out.print(rs6.getString("review"));%></td>
                   <td><%out.print(rs6.getString("status"));%></td>
                  
               <!--     <td><a href=deletecourseoptingdata.jsp?co_id=<%//out.print(rs5.getString("co_id"));%> class="btn btn-danger">delete</a></td> -->
           </tr>
           <% } 
                    } %>
										</tbody>
									</table>