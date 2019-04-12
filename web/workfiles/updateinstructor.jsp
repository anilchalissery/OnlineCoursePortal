<%-- 
    Document   : updateinstructor
    Created on : Mar 12, 2019, 2:56:15 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update </title>
   <%
        String i_id=request.getParameter("i_id");
        ResultSet rs=DAL.DBConnect.SelectData("select * from instructor where i_id="+i_id);
        rs.next();
        %>
    </head>
    
    <body>
        <h1>Update Student Data</h1>
        <form action="updateinstructoraction.jsp" method="POST">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="i_name" value="<%out.print(rs.getString("i_name"));%>"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="i_email" value="<%out.print(rs.getString("i_email"));%>"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="i_password" value="<%out.print(rs.getString("i_password"));%>"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="i_id" value="<%out.print(rs.getString("i_id"));%>">
                    </td>
                    <td>
                        <input type="submit" value="update">
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
