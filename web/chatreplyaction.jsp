<%-- 
    Document   : chatreplyaction
    Created on : Mar 22, 2019, 10:37:54 AM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><%
        String t_id="1";
        String chat_id=request.getParameter("chat_id");
        String reply=request.getParameter("reply");
        DBConnect.ExecuteQuery("UPDATE `intract` SET `t_id`='"+t_id+"',`reply`='"+reply+"' WHERE `chat_id`='"+chat_id+"'");
        %>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
