<%-- 
    Document   : updatecoursedata
    Created on : Mar 13, 2019, 2:52:55 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>updATE course</title>
    </head>
    <body>
        <h1>update fields</h1>
        <form action="updatecoursedataaction.jsp" method="POST">
        <table>
         
           <%
               String c_id=request.getParameter("c_id");
               ResultSet rs=DAL.DBConnect.SelectData("SELECT * FROM `course` where c_id="+c_id);
         //  ResultSet rs1=DAL.DBConnect.SelectData("SELECT * FROM course INNER JOIN instructor on course.i_id=instructor.i_id");
           rs.next();
           %>
           <tr><td>course name</td>
               <td><input type="text" name="c_name" value="<%out.print(rs.getString("c_name"));%>" required></td></tr>
               <tr><td>about course</td> <td><input type="text" name="about_course" value="<%out.print(rs.getString("about_course"));%>" required></td></tr>
          <!--      <td>instructor_name</td> <td><%//out.print(rs1.getString("i_name"));%></td> -->
               <tr>   <td>duration</td><td><input type="text" name="duration" value="<%out.print(rs.getString("duration"));%>" required></td></tr>
             <tr>   <td>department</td>   <td><input type="text" name="dept" value="<%out.print(rs.getString("dept"));%>" required></td></tr>
             <tr>    <td>file</td>   <td><input type="file" name="datafile" value="<%out.print(rs.getString("datafile"));%>" required></td></tr>
             <tr><td></td><input type="hidden" name="c_id" value="<%out.print(rs.getString("c_id"));%>"><td><input type="submit" value="update"></td></tr>
           
         
       </table>
        </form>
    </body>
</html>
