<%-- 
    Document   : updatedeptaction
    Created on : Mar 27, 2019, 9:05:31 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%String dept_id=request.getParameter("dept_id");
        String dept_name=request.getParameter("dept_name");
        
DAL.DBConnect.ExecuteQuery("UPDATE `department` SET `dept_name`='"+dept_name+"' WHERE dept_id="+dept_id);
session.setAttribute("msg","sucess");
response.sendRedirect("depttable.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
