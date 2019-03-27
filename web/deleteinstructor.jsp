<%-- 
    Document   : deleteinstructor
    Created on : Mar 12, 2019, 2:56:42 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        String i_id=request.getParameter("i_id");
        
        DAL:DBConnect.ExecuteQuery("DELETE FROM `instructor` WHERE i_id="+i_id);
        
         response.sendRedirect("instructortables.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
