<%-- 
    Document   : deletecoursedata
    Created on : Mar 13, 2019, 2:53:13 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deleting course</title>
         <%
            String c_id=request.getParameter("c_id");
            
        DAL.DBConnect.ExecuteQuery("DELETE FROM `course` WHERE c_id='"+c_id+"'");
      response.sendRedirect("PrintCourseData.jsp");
%>
    </head>
    <body>
        <h1>delete course</h1>
    </body>
</html>
