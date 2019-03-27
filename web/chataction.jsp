<%-- 
    Document   : chataction
    Created on : Mar 22, 2019, 10:20:06 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        String s_id="1";
     //   String t_id = "1";
        String question = request.getParameter("question");
        
        DAL.DBConnect.ExecuteQuery("insert into intract (s_id,question) values('"+s_id+"','"+question+"')");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
