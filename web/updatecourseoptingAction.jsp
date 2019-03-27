<%-- 
    Document   : updatecourse_optingAction
    Created on : Mar 14, 2019, 10:10:37 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
       String co_id=request.getParameter("co_id");
        String s_id=request.getParameter("s_id");
        String c_id=request.getParameter("c_id");
        
        DAL.DBConnect.ExecuteQuery("UPDATE `course_opted` SET `c_id`='"+c_id+"',`s_id`='"+s_id+"' WHERE co_id='"+co_id+"'");
        
        
        response.sendRedirect("courseoptedtable.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
