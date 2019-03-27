<%-- 
    Document   : printCourseData
    Created on : Mar 13, 2019, 2:27:04 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>printing course table</title>
    </head>
    <body>
        <h1>course data</h1>
       <table>
           <tr>
               <td>course name</td>
                <td>about course</td>
                 <td>instructor_name</td>
                  <td>duration</td>
                   <td>department</td>
                    <td>file</td>
           </tr>
           <%ResultSet rs=DAL.DBConnect.SelectData("SELECT * FROM `course`");
           ResultSet rs1=DAL.DBConnect.SelectData("SELECT * FROM course INNER JOIN instructor on course.i_id=instructor.i_id");
           while(rs.next()&&rs1.next()){
           %>
           <tr>
               <td><%out.print(rs.getString("c_name"));%></td>
                <td><%out.print(rs.getString("about_course"));%></td>
                 <td><%out.print(rs1.getString("i_name"));%></td>
                  <td><%out.print(rs.getString("duration"));%></td>
                   <td><%out.print(rs.getString("dept"));%></td>
                    <td><%out.print(rs.getString("datafile"));%></td>
                    <td><a href="course_reg.jsp">Insert</a></td>
                    <td><a href=updatecoursedata.jsp?c_id=<%out.print(rs.getString("c_id"));%>>update</a></td>
                    <td><a href=deletecoursedata.jsp?c_id=<%out.print(rs.getString("c_id"));%>>delete</a></td>
           </tr>
           <% } %>
       </table>
    </body>
</html>
