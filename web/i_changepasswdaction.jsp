<%-- 
    Document   : i_changepasswdaction
    Created on : Apr 11, 2019, 10:43:08 AM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update process</title>
        <%
            String i_id=request.getParameter("i_id");
            String opassword=request.getParameter("opassword");
            String npassword=request.getParameter("npassword");
            String cpassword=request.getParameter("cpassword");
            
       // String s_email=request.getParameter("s_email");
        try
                                             {
        if(npassword.equals(cpassword)){
            ResultSet rs=DBConnect.SelectData("Select * from instructor where i_id="+i_id);
        rs.next();
                if(opassword.equals(rs.getString("i_password")))
                {
                DAL:DBConnect.ExecuteQuery("UPDATE `instructor` SET `i_password`='"+npassword+"' WHERE i_id="+i_id);
                  session.setAttribute("msg","sucess");
               // out.print("UPDATE `student` SET `s_name`='"+s_name+"',`s_email`='"+s_email+"',`s_password`='"+s_password+"' WHERE s_id="+s_id);
                }
                else
                {
                  session.setAttribute("msg","omismatch");
                  response.sendRedirect("i_changepasswd.jsp");

                }
        }
        else
        {
          session.setAttribute("msg","cmismatch");
          response.sendRedirect("i_changepasswd.jsp");
          
        }
                                             
                                      String type = (String)session.getAttribute("type");
                                            
                                         if(type.equals("instructor"))
                                         {
                                             out.print(type+"3");
                                             response.sendRedirect("i_profile.jsp");
                                         }
                                         
                                         else
                                         {
                                             out.print(type+"4");
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("studenttables.jsp");
                                         }

                                             }
catch(Exception e){
out.print(e);
}
                                         
      // response.sendRedirect("studenttables.jsp"); 
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
