0<%-- 
    Document   : updatecoursedataaction
    Created on : Mar 13, 2019, 3:16:21 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%
             String type=(String)session.getAttribute("type");
            String c_id=request.getParameter("c_id");
            String c_name=request.getParameter("c_name");
        String about_course=request.getParameter("about_course");
        String duration=request.getParameter("duration");
        String dept=request.getParameter("dept");
        String datafile=request.getParameter("datafile");
        String i_id=request.getParameter("i_id");
        DAL.DBConnect.ExecuteQuery("UPDATE `course` SET `c_name`='"+c_name+"',`about_course`='"+about_course+"',`i_id`='"+i_id+"',`duration`='"+duration+"',`dept`='"+dept+"',`datafile`='"+datafile+"' WHERE c_id='"+c_id+"'");
//session.setAttribute("msg","sucess");      
//response.sendRedirect("coursedatatable.jsp");
 try
                                             {
                                             
                                             //out.print(type+"1");
                                         if(type.equals("instructor"))
                                         {
                                             //out.print(type+"3");
                                             response.sendRedirect("i_viewcourses.jsp");
                                         }
                                         else
                                         {
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
        <h1>Hello World!</h1>
    </body>
</html>
