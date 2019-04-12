<%-- 
    Document   : updatestudent
    Created on : Mar 11, 2019, 4:07:19 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        String s_id=request.getParameter("s_id");
        ResultSet rs=DAL.DBConnect.SelectData("select * from student where s_id="+s_id);
        rs.next();
        %>
    </head>
    <body>
        <h1>Update Student Data</h1>
        <form action="updatestudentaction.jsp" method="POST">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="s_name" value="<%out.print(rs.getString("s_name"));%>"></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="s_mob" value="<%out.print(rs.getString("s_mob"));%>"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="s_email" value="<%out.print(rs.getString("s_email"));%>"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="s_password" value="<%out.print(rs.getString("s_password"));%>"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="s_id" value="<%out.print(rs.getString("s_id"));%>">
                    </td>
                    <td>
                        <input type="submit" value="update">
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
