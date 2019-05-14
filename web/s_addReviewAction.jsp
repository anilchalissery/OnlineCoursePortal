<%-- 
    Document   : s_addReviewAction
    Created on : May 14, 2019, 11:04:03 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><%
        String review = request.getParameter("review");
        String c_id=request.getParameter("c_id");
        String s_id=request.getParameter("s_id");
        DAL.DBConnect.ExecuteQuery("update course_opted set review='"+review+"' where c_id="+c_id+" and s_id="+s_id );
        response.sendRedirect("s_opted_courses.jsp");
        
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
