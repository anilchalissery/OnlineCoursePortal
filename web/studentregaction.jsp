<%-- 
    Document   : studentregaction
    Created on : Mar 7, 2019, 2:50:09 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration process</title>
        <%
        String s_name=request.getParameter("s_name");
        String s_email=request.getParameter("s_email");
        String s_password=request.getParameter("s_password");
        String s_password_check=request.getParameter("s_password_check");
        
        
        out.print("name"+s_name+"email"+s_email+"password"+s_password);
        DAL.DBConnect.ExecuteQuery("insert into student (s_name,s_email,s_password) values ('"+s_name+"','"+s_email+"','"+s_password+"')");
        
         response.sendRedirect("studenttables.jsp");
        
        %>
    </head>
    <body>
        <h1>Registered</h1>
    </body>
</html>
