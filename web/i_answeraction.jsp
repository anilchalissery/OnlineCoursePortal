<%-- 
    Document   : i_answeraction
    Created on : Apr 14, 2019, 7:07:22 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <%
        String q_id = request.getParameter("q_id");
              String i_id = (String)session.getAttribute("i_id");
      
        String answer=request.getParameter("answer");
       
      //  String i_id="2";
        DAL.DBConnect.ExecuteQuery("INSERT INTO `answers`( `i_id`, `q_id`, `answer`) VALUES ('"+i_id+"','"+q_id+"','"+answer+"')");
      response.sendRedirect("i_profile.jsp");
%>
        
    </head>
    
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
