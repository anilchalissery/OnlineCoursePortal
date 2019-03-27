<%-- 
    Document   : updatestudentaction
    Created on : Mar 12, 2019, 2:22:17 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update process</title>
        <%
            String s_id=request.getParameter("s_id");
        String s_name=request.getParameter("s_name");
        String s_password=request.getParameter("s_password");
        String s_email=request.getParameter("s_email");
        
        DAL:DBConnect.ExecuteQuery("UPDATE `student` SET `s_name`='"+s_name+"',`s_email`='"+s_email+"',`s_password`='"+s_password+"' WHERE s_id="+s_id);
       // out.print("UPDATE `student` SET `s_name`='"+s_name+"',`s_email`='"+s_email+"',`s_password`='"+s_password+"' WHERE s_id="+s_id);
        response.sendRedirect("studenttables.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
