<%-- 
    Document   : PrintDept
    Created on : Mar 14, 2019, 9:50:12 PM
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
        <%ResultSet rs=DBConnect.SelectData("SELECT * FROM `department`");%>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <tr><td>department name<td>
                    <%
                    while(rs.next()){
                    %>
                    <tr>
                        <td><%out.print(rs.getString("dept_name"));%></td>
                       <td><a href=updatedept.jsp?dept_id=<% out.print(rs.getString("dept_id")); %>>update</a></td>
                <td><a href=deletedept.jsp?dept_id=<% out.print(rs.getString("dept_id")); %>>delete</a></td>
                <td><a href=deptinsertion.jsp>Insert</a></td>
                    </tr>
                   <% } %>
        </table>
    </body>
</html>
