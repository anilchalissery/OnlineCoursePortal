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
            String type = (String)session.getAttribute("type");
        DAL.DBConnect.ExecuteQuery("DELETE FROM `course` WHERE c_id='"+c_id+"'");
      
session.setAttribute("msg","sucess");
//response.sendRedirect("coursedatatable.jsp");
try
                                             {
                                             
                                         if(type.equals("instructor"))
                                         {
                                             //out.print(type+"3");
                                             response.sendRedirect("i_viewcourses.jsp");
                                         }
                                         else
                                         {
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("depttable.jsp");
                                         }
}
catch(Exception e){
    out.print(type+"4");
out.print(e);
}
%>
    </head>
    <body>
        <h1>delete course</h1>
    </body>
</html>
