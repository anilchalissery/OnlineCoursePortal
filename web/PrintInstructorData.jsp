<%-- 
    Document   : PrintInstructorData
    Created on : Mar 12, 2019, 2:39:32 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Instructor Data</h1>
        <% ResultSet rs = DAL.DBConnect.SelectData("SELECT * FROM `instructor`");%>
        <table>
            <tr>
                <td>Student Name</td>
                <td>Email</td>
                <td>Password</td>
                
            </tr>
            <%while(rs.next()){ %>
            <tr>
                
                <td><%out.print(rs.getString("i_name")); %></td>
                <td><%out.print(rs.getString("i_email")); %></td>
                <td><%out.print(rs.getString("i_password")); %></td>
                <td><a href=updateinstructor.jsp?i_id=<% out.print(rs.getString("i_id")); %>>update</a></td>
                <td><a href=deleteinstructor.jsp?i_id=<% out.print(rs.getString("i_id")); %>>delete</a></td>
                <td><a href=instructorreg.jsp>Insert</a></td>
                
                <% } %>
                
            </tr>
        </table>
    </body>
</html>
