<%-- 
    Document   : course_optingAction
    Created on : Mar 11, 2019, 2:24:47 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>course opting</title>
    </head>
    <body>
        <h1></h1>
        <%
       // String c_id=request.getParameter("c_id");
        String s_id=request.getParameter("s_id");
        String c_id=request.getParameter("c_id");
        ResultSet rs = DAL.DBConnect.SelectData("SELECT * FROM `course_opted` INNER JOIN course on course_opted.c_id=course.c_id where course.c_id="+c_id+" and course_opted.s_id="+s_id);
        if(!rs.next())
        {
        DAL.DBConnect.ExecuteQuery("INSERT INTO `course_opted`(`s_id`, `c_id`) VALUES ('"+s_id+"','"+c_id+"')");
        response.sendRedirect("s_opted_courses.jsp");
        session.setAttribute("msg1", "sucess" );  
        }
        else
        {
        out.print("already opted this course");
         response.sendRedirect("s_Opt_course.jsp");
        session.setAttribute("msg1", "failed" );
        }
        
        
        %>
    </body>
</html>
