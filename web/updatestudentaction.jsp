<%-- 
    Document   : updatestudentaction
    Created on : Mar 12, 2019, 2:22:17 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update process</title>
        <%
            String type = (String)session.getAttribute("type");
            String s_id=request.getParameter("s_id");
        String s_name=request.getParameter("s_name");
        String gender=request.getParameter("gender");
         String s_mob=request.getParameter("s_mob");
         //String status=request.getParameter("status");
      //  String s_password=request.getParameter("s_password");
        String s_email=request.getParameter("s_email");
        
        DAL:DBConnect.ExecuteQuery("UPDATE `student` SET `s_name`='"+s_name+"',`gender`='"+gender+"',`s_mob`='"+s_mob+"',`s_email`='"+s_email+"' WHERE s_id="+s_id);
       // out.print("UPDATE `student` SET `s_name`='"+s_name+"',`s_email`='"+s_email+"',`s_password`='"+s_password+"' WHERE s_id="+s_id);
      // out.print("UPDATE `student` SET `s_name`='"+s_name+"',`gender`='"+gender+"',`s_mob`='"+s_mob+"',`s_email`='"+s_email+"' WHERE s_id="+s_id);
    
                                             try
                                             {
                                             
                                             //out.print(type+"1");
                                         if(type.equals("student"))
                                         {
                                            // out.print(type+"2");
                                             session.setAttribute("msg","sucess");
                                        response.sendRedirect("s_profile.jsp");
                                         }
                                         else if(type.equals("instructor"))
                                         {
                                             //out.print(type+"3");
                                             response.sendRedirect("i_profile.jsp");
                                         }
                                         else
                                         {
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("studenttables.jsp");
                                         }
}
catch(Exception e){
    out.print(type+"4");
out.print(e);
}
                                         
      // response.sendRedirect("studenttables.jsp");
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
