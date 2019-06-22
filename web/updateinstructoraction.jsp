<%-- 
    Document   : updateinstructoraction
    Created on : Mar 12, 2019, 3:54:58 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            String type = (String)session.getAttribute("type"); 
        String i_id=request.getParameter("i_id");
        String i_name=request.getParameter("i_name");
        String gender=request.getParameter("gender");
        String i_mob=request.getParameter("i_mob");
        String status=request.getParameter("status");
        
        
       // String msg="";
        session.setAttribute("msg","sucess");
      
   //     response.sendRedirect("instructortables.jsp");
         try
                                             {
                                             
                                             //out.print(type+"1");
                                        if(type.equals("instructor"))
                                         {
                                             //out.print(type+"3");
                                             DAL:DBConnect.ExecuteQuery("UPDATE `instructor` SET `i_name`='"+i_name+"',`gender`='"+gender+"',`i_mob`='"+i_mob+"' WHERE i_id="+i_id);
                                             response.sendRedirect("i_profile.jsp");
                                         }
                                        
                                         else
                                         {
                                            // String i_password=request.getParameter("i_password");
                                               String i_email=request.getParameter("i_email");
                                               String i_wrkEmail=request.getParameter("i_wrkEmail");
        String i_workInstitute=request.getParameter("i_workInstitute");
                                               DAL:DBConnect.ExecuteQuery("UPDATE `instructor` SET `i_name`='"+i_name+"',`gender`='"+gender+"',`i_mob`='"+i_mob+"',`i_email`='"+i_email+"',status='"+status+"', i_workInstitute='"+i_workInstitute+"', i_wrkEmail='"+i_wrkEmail+"' WHERE i_id="+i_id);
                                          //   session.setAttribute("msg","sucess");
                                             response.sendRedirect("instructortables.jsp");
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
