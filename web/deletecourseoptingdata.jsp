<%-- 
    Document   : deletecourseoptingdata
    Created on : Mar 14, 2019, 10:07:26 AM
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
            
        DAL.DBConnect.ExecuteQuery("DELETE FROM `course_opted` WHERE co_id='"+co_id+"'");
session.setAttribute("msg","sucess");      
response.sendRedirect("courseoptedtable.jsp");
%>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
