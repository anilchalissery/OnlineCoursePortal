<%-- 
    Document   : deletedept
    Created on : Mar 14, 2019, 10:04:24 PM
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
        String dept_id=request.getParameter("dept_id");
        
        DAL:DBConnect.ExecuteQuery("DELETE FROM `department` WHERE dept_id="+dept_id);
        session.setAttribute("msg","sucess");
         response.sendRedirect("depttable.jsp");
        %>
    </head>
    <body>
        <h1>deleteing</h1>
    </body>
</html>
