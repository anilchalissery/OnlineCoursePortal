<%-- 
    Document   : deletestudent
    Created on : Mar 11, 2019, 4:07:43 PM
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
        String s_id=request.getParameter("s_id");
        
        DAL:DBConnect.ExecuteQuery("DELETE FROM `student` WHERE s_id="+s_id);
        session.setAttribute("msg","sucess");
         response.sendRedirect("studenttables.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
