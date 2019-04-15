<%-- 
    Document   : course_regaction
    Created on : Mar 7, 2019, 3:14:01 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course reg process</title>
        <%
             String type = (String)session.getAttribute("type");
        String c_name=request.getParameter("c_name");
        String about_course=request.getParameter("aboutcourse");
        String duration=request.getParameter("duration");
        String dept=request.getParameter("dept");
        String datafile=request.getParameter("datafile");
       
        
    //  response.sendRedirect("coursedatatable.jsp");
    
try
                                             {
                                             
                                         if(type.equals("instructor"))
                                         {
                                             //out.print(type+"3");
                                              String i_id = (String)session.getAttribute("i_id");
                                             DAL.DBConnect.ExecuteQuery("INSERT INTO `course`( `c_name`, `about_course`, `i_id`, `duration`, `dept`, `datafile`) VALUES ('"+c_name+"','"+about_course+"','"+i_id+"','"+duration+"','"+dept+"','"+datafile+"')");
                                             response.sendRedirect("i_addCourse.jsp");
                                         }
                                         else
                                         {
                                             String i_id =request.getParameter("i_id");
                                             DAL.DBConnect.ExecuteQuery("INSERT INTO `course`( `c_name`, `about_course`, `i_id`, `duration`, `dept`, `datafile`) VALUES ('"+c_name+"','"+about_course+"','"+i_id+"','"+duration+"','"+dept+"','"+datafile+"')");
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("coursedatatable.jsp");
                                         }
}
catch(Exception e){
    out.print(type+"4");
out.print(e);
}
%>
    </head>
    <body>
        <h1>Course reg process</h1>
    </body>
</html>
