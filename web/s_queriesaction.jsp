<%-- 
    Document   : s_queriesaction
    Created on : Apr 14, 2019, 6:26:22 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%
        String question=request.getParameter("question");
        String type = (String)session.getAttribute("type");
        String s_id = (String)session.getAttribute("s_id");
DAL.DBConnect.ExecuteQuery("INSERT INTO `question`( `s_id`, `question`) VALUES ('"+s_id+"','"+question+"')");
//response.sendRedirect("depttable.jsp");
try
                                             {
                                             
                                         if(type.equals("student"))
                                         {
                                             //out.print(type+"3");
                                             response.sendRedirect("s_profile.jsp");
                                         }
                                         else
                                         {
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("home.jsp");
                                         }
}
catch(Exception e){
    out.print(type+"4");
out.print(e);
}
                                  
        %>
    </head>
    <body>
        <h1>s_queryaction</h1>
    </body>
</html>
