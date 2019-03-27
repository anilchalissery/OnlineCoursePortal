<%-- 
    Document   : deptinsertaction
    Created on : Mar 14, 2019, 9:47:26 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        String dept=request.getParameter("dept");
        
DAL.DBConnect.ExecuteQuery("INSERT INTO `department`( `dept_name`) VALUES ('"+dept+"')");
response.sendRedirect("PrintDept.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
