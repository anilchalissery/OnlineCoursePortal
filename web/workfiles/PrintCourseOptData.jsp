<%-- 
    Document   : PrintCourseOptData
    Created on : Mar 13, 2019, 4:17:47 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>opted courses</title>
    </head>
    <body>
        <h1>Opted courses by students</h1>
        <table>
           <tr>
               <td>course name</td>
                <td>student name</td>
                 <td>review</td>
                 
                  
           </tr>
           <%
               ResultSet rs=DAL.DBConnect.SelectData("SELECT * FROM `course_opted` INNER JOIN student on course_opted.s_id=student.s_id");
           ResultSet rs1=DAL.DBConnect.SelectData("SELECT * FROM `course_opted` INNER JOIN course on course_opted.c_id=course.c_id");
          
           //
           while(rs1.next()&& rs.next()) {
          
           %>
           <tr>
               <td><%out.print(rs1.getString("c_name"));%></td>
               <td><%out.print(rs.getString("s_name"));%></td>
                  <td><%out.print(rs1.getString("review"));%></td>
                   <td><a href="course_opting.jsp">Insert</a></td>
                    <td><a href=updatecourseoptingdata.jsp?co_id=<%out.print(rs.getString("co_id"));%>>update</a></td>
                    <td><a href=deletecourseoptingdata.jsp?co_id=<%out.print(rs.getString("co_id"));%>>delete</a></td> 
           </tr>
           <% } %>
       </table>
    </body>
</html>
