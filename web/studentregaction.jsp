<%-- 
    Document   : studentregaction
    Created on : Mar 7, 2019, 2:50:09 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration process</title>
        <%
            // String type = (String)session.getAttribute("type");
        String s_name=request.getParameter("s_name");
        String gender=request.getParameter("gender");
        String s_email=request.getParameter("s_email");
        String s_password=request.getParameter("s_password");
        //String s_password_check=request.getParameter("s_password_check");
        String s_mob=request.getParameter("s_mob");
       // String status="Pending";
        // String s_mob=request.getParameter("s_mob");
       // out.print("name"+s_name+"email"+s_email+"password"+s_password);
        DAL.DBConnect.ExecuteQuery("insert into student (s_name,gender,s_mob,s_email,s_password) values ('"+s_name+"','"+gender+"','"+s_mob+"','"+s_email+"','"+s_password+"')");
        
        session.setAttribute("msg","sucess");
         response.sendRedirect("studenttables.jsp");
    /*     
try{
                                             
                                             out.print(type+"1");
                                         if(!type.isEmpty())
                                         {
                                            out.print(type+"3");
                                             response.sendRedirect("Login.jsp");
                                             
                                         }
                                         else if(type.equals("admin"))
                                         {
                                          out.print(type+"2");
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("studenttables.jsp");   
                                         }
                                         else
                                         {
                                             session.setAttribute("msg","sucess");
                                             out.print(type+"3");
                                           //  response.sendRedirect("studenttables.jsp");
                                         }
}
catch(Exception e){
    out.print(type+"4");
out.print(e);
}
        */
        %>
    </head>
    <body>
        <h1>Registered</h1>
    </body>
</html>
