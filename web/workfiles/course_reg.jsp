<%-- 
    Document   : course_reg
    Created on : Mar 7, 2019, 3:13:32 PM
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
        <%
       // ResultSet rs=DBConnect.SelectData("select * from")
        
        
        
        %>
    </head>
    <body>
        <h1>course regs</h1>
        <table>
            <form action="course_regaction.jsp" method="post">
                <tr>
                    <td>Course Name:</td>
                    <td><input type="text" name="c_name"></td>
                </tr>
                <tr>
                    <td>About Course:</td>
                    <td><textarea name="aboutcourse"> </textarea></td>
                </tr>
                <tr>
                    <td>Duration:</td>
                    <td><input type="text" name="duration"></td>
                </tr>
                <tr>
                    <td>Department:</td>
                    <td><select name="dept">
                            <option value="mca">MCA</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Datafile:</td>
                    <td><input type="file" name="datafile"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"></td>
                </tr>
                
            </form>
        </table>
    </body>
</html>
