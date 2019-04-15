<%-- 
    Document   : i_addCourseAction
    Created on : Apr 13, 2019, 8:57:07 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course reg process</title>
        <%
        String i_id = (String)session.getAttribute("i_id");
        String c_name=request.getParameter("c_name");
        String aboutcourse=request.getParameter("aboutcourse");
        String duration=request.getParameter("duration");
        String dept=request.getParameter("dept");
        String datafile=request.getParameter("datafile");
      //  String i_id="2";
        DAL.DBConnect.ExecuteQuery("INSERT INTO `course`( `c_name`, `about_course`, `i_id`, `duration`, `dept`, `datafile`) VALUES ('"+c_name+"','"+aboutcourse+"','"+i_id+"','"+duration+"','"+dept+"','"+datafile+"')");
      response.sendRedirect("i_home.jsp");
%>
    </head>
    <body>
        <h1>Course reg process</h1>
    </body>
</html>
