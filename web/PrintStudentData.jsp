<%-- 
    Document   : PrintStudentData
    Created on : Mar 11, 2019, 3:39:33 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTERED STUDENT</title>
    </head>
    <body>
        <h1>REGISTERED STUDENT</h1>
        <%
        ResultSet rs = DAL.DBConnect.SelectData("SELECT * FROM `student`");
        
        %>
        <table>
            <tr>
                <td>Student Name</td>
                <td>Email</td>
                <td>Password</td>
                
            </tr>
            <%while(rs.next()){ %>
            <tr>
                
                <td><%out.print(rs.getString("s_name")); %></td>
                <td><%out.print(rs.getString("s_email")); %></td>
                <td><%out.print(rs.getString("s_password")); %></td>
                <td><a href=updatestudent.jsp?s_id=<% out.print(rs.getString("s_id")); %>>update</a></td>
                <td><a href=deletestudent.jsp?s_id=<% out.print(rs.getString("s_id")); %>>delete</a></td>
                <td><a href=studentreg.jsp>Insert</a></td>
                <% } %>
                
            </tr>
        </table>
    </body>
</html>
