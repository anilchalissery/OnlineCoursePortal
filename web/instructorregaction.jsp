<%-- 
    Document   : instructorregaction
    Created on : Mar 7, 2019, 3:05:21 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instructor registration process</title>
        <%
        String i_name=request.getParameter("i_name");
        String gender=request.getParameter("gender");
        String i_mob=request.getParameter("i_mob");
        String i_email=request.getParameter("i_email");
        String i_password=request.getParameter("i_password");
        String i_password_check=request.getParameter("i_password_check");
        
        
        //out.print("name"+i_name+"email"+i_email+"password"+i_password);
        DAL.DBConnect.ExecuteQuery("insert into instructor (i_name,gender,i_mob,i_email,i_password) values ('"+i_name+"','"+gender+"','"+i_mob+"','"+i_email+"','"+i_password+"')");
        session.setAttribute("msg","sucess");
         response.sendRedirect("instructortables.jsp");
        
        %>
    </head>
    <body>
        <h1>ADD course</h1>
            
    </body>
</html>
