<%-- 
    Document   : mycourses
    Created on : Apr 13, 2019, 9:13:26 PM
    Author     : test
--%>
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
                                                                                                <th>Students</th>
                                                                                              <!--  <th>about course</th>
                                                                                                  <th>duration</th>
                                                                                                   <th>department</th>
                                                                                                    <th>file</th>
                                                                                                    <th></th>
                                                                                                    <th><a href="insertCourse.jsp" class="btn btn-primary">Insert</a></th>-->
												
											</tr>
										</thead>
										<tbody><%//String i_id = (String)session.getAttribute("i_id");%>
										<%ResultSet rs=DAL.DBConnect.SelectData("SELECT * FROM `course` where i_id="+i_id);
                                                                                 //   ResultSet rs1=DAL.DBConnect.SelectData("SELECT * FROM course INNER JOIN instructor on course.i_id=instructor.i_id");
                                                                                         int i=1;
                                                                                            while(rs.next()){
                                                                                                ResultSet rs1=DAL.DBConnect.SelectData("select count(s_id) from course_opted where c_id="+rs.getString("c_id"));
                                                                                                rs1.next();
                                                                                    %>
                                                                                    <tr>
                                                                                        <td><%out.print(i);i++;%></td>
                                                                                        <td><%out.print(rs.getString("c_name"));%></td>
                                                                                        <td><%out.print(rs1.getString("count(s_id)"));%></td>
                                                                                <!--         <td><%//out.print(rs.getString("about_course"));%></td>
                                                                                           <td><%//out.print(rs.getString("duration"));%></td>
                                                                                            <td><%//out.print(rs.getString("dept"));%></td>
                                                                                             <td><%//out.print(rs.getString("datafile"));%></td>-->
                                                                                             
                                                                                         <!--    <td><a href=UpdateCourseDataTable.jsp?c_id=<%//out.print(rs.getString("c_id"));%> class="btn btn-warning">update</a></td>
                                                                                             <td><a href=deletecoursedata.jsp?c_id=<%//out.print(rs.getString("c_id"));%> class="btn btn-danger">delete</a></td>-->
                                                                                    </tr>
                                                                                    <% } %>
										</tbody>
									</table>
								</div>
							</div>