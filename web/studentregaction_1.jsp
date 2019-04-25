<%-- 
    Document   : studentregaction
    Created on : Mar 7, 2019, 2:50:09 PM
    Author     : test
--%>

<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
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
       String status="Pending";
       ResultSet rs=DBConnect.SelectData("Select * from student where s_email='"+s_email+"' ");
       //int flag=0;
       
           if(rs.next())
           {
                 %> <jsp:include page="StudentRegs.jsp?a=emailExists"></jsp:include><%
           }
else{
       

             DAL.DBConnect.ExecuteQuery("insert into student (s_name,gender,s_mob,s_email,s_password) values ('"+s_name+"','"+gender+"','"+s_mob+"','"+s_email+"','"+s_password+"')");
        
     //   session.setAttribute("msg","sucess");
         response.sendRedirect("Login.jsp");
}
     
       
       
       
       
       
       
        %>
    </head>
    <body>
        <h1>Registered</h1>
    </body>
</html>
