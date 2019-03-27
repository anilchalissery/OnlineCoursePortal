<%-- 
    Document   : chatReplay
    Created on : Mar 22, 2019, 10:27:45 AM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <form action="chatreplyaction.jsp" method="post">
                
                   <tr> <td>Question:</td>
                    <td><select name="chat_id"><%ResultSet rs=DBConnect.SelectData("select * from intract"); 
                                while(rs.next()){ %>
                            <option value="<%out.print(rs.getString("chat_id"));%>"><%out.print(rs.getString("question"));%></option>
                    <% } %>    </select>
                    </td>
                </tr>
                <tr>
                    <td>reply:</td>
                    <td><textarea name="reply" rows="10" cols="18"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" ></td>
                </tr>
                
            </form>
        </table>
    </body>
</html>
