<%-- 
    Document   : course_opting
    Created on : Mar 7, 2019, 4:05:44 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>opting course</title>
    </head>
    <body>
        <h1>Select Course</h1>
        <form action="course_optingAction.jsp" method="POST">
        <% ResultSet rs=DBConnect.SelectData("select * from course");%>
        <select name="c_id">
<%
           // ResultSet rs=DBConnect.SelectData("select * from course");
            while(rs.next())
            {
            
            %>
            <option value="<%out.print(rs.getString("c_id"));%>"> <%out.print(rs.getString("c_name"));%>  </option>
           
            <% } %>
            
                 
                <input type="hidden" name="s_id" value="2">
                <input type="submit">
            </form>
            
        </select>
        
        
        
        
    </body>
</html>
