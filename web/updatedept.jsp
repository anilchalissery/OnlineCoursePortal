<%-- 
    Document   : updatedept
    Created on : Mar 14, 2019, 10:04:06 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>update dept</h1>
        <% String dept_id=request.getParameter("dept_id");
            ResultSet rs=DBConnect.SelectData("SELECT * FROM `department` WHERE dept_id="+dept_id); %>
    </body>
    <form action="updatedeptaction.jsp" method="POST">
        <table>
            <td>department name:</td><td><input type="text" value="<%out.print(rs.getString("dept_name"));%>" name="dept_name"></td>
            <tr><td><input type="hidden" value="<%out.print(rs.getString("dept_id"));%>" name="dept_id"></td><td></td>
        </table>
    </form>
</html>
