<%-- 
    Document   : updateinstructoraction
    Created on : Mar 12, 2019, 3:54:58 PM
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
        String i_name=request.getParameter("i_name");
        String i_password=request.getParameter("i_password");
        String i_email=request.getParameter("i_email");
        
        DAL:DBConnect.ExecuteQuery("UPDATE `instructor` SET `i_name`='"+i_name+"',`i_email`='"+i_email+"',`i_password`='"+i_password+"' WHERE i_id="+i_id);
        
        response.sendRedirect("instructortables.jsp");
        
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
