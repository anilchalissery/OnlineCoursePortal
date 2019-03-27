<%-- 
    Document   : updatecourseoptingdata
    Created on : Mar 14, 2019, 10:07:00 AM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update process of course opting</title>
    </head>
    <body>
        <h1>course opting update</h1>
        <form action="updatecourseoptingAction.jsp" method="POST">
        <% String co_id=request.getParameter("co_id");
           ResultSet rs=DBConnect.SelectData("select * from course ");%>
        <select name="c_id"> 
<%
        //    ResultSet rs=DBConnect.SelectData("select * from course");
           while(rs.next())
            {
            
            %>
            <option value="<%out.print(rs.getString("c_id"));%>"> <%out.print(rs.getString("c_name"));%>  </option>
           
            <% } %>
        </select>
             <% ResultSet rs1=DBConnect.SelectData("select * from student ");%>
        <select name="s_id">
<%
        //    ResultSet rs1=DBConnect.SelectData("select * from course");
            while(rs1.next())
            {
            
            %>
            <option value="<%out.print(rs1.getString("s_id"));%>"> <%out.print(rs1.getString("s_name"));%>  </option>
           
            <% }  %>
            
        </select>   
            <table>
                
                <tr><td><input type="hidden" name="co_id" value="<%out.print("co_id");%>"></td>
                    <td> <input type="submit"></td>
                </tr>
            
               
            </form>
            </table>
        </select>
    </body>
</html>
