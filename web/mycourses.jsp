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
            </tr>
        </thead>
        <tbody>
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
         </tr>
                         <% } %>
	</tbody>
	</table>
	</div>
</div>