<%-- 
    Document   : course_optingAction
    Created on : Mar 11, 2019, 2:24:47 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>course opting</title>
    </head>
    <body>
        <h1>course opted successfully</h1>
        <%
       // String c_id=request.getParameter("c_id");
        String s_id=request.getParameter("s_id");
        String c_id=request.getParameter("c_id");
        
        DAL.DBConnect.ExecuteQuery("INSERT INTO `course_opted`(`s_id`, `c_id`) VALUES ('"+s_id+"','"+c_id+"')");
        
        
        response.sendRedirect("PrintCourseOptData.jsp");
        %>
    </body>
</html>
