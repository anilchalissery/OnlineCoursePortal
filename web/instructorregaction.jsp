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
        String i_email=request.getParameter("i_email");
        String i_password=request.getParameter("i_password");
        String i_password_check=request.getParameter("i_password_check");
        
        
        out.print("name"+i_name+"email"+i_email+"password"+i_password);
        DAL.DBConnect.ExecuteQuery("insert into instructor (i_name,i_email,i_password) values ('"+i_name+"','"+i_email+"','"+i_password+"')");
        
         response.sendRedirect("instructortables.jsp");
        
        %>
    </head>
    <body>
        <h1>ADD course</h1>
        <%
        ResultSet rs=DBConnect.SelectData("select * from instructor");
        rs.next();
        
        %>
        <a href="course_reg.jsp?i_id=<%rs.getString("i_id");%>">
    </body>
</html>
