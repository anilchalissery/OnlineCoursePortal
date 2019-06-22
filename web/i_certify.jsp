<%-- 
    Document   : i_certify
    Created on : Jun 20, 2019, 9:47:11 AM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>certify Page</title>
        <%
        String c_id=request.getParameter("c_id");
        String s_id=request.getParameter("s_id");
        String i_id=request.getParameter("i_id");
        ResultSet rs=DBConnect.SelectData("SELECT * FROM `certified` where c_id='"+c_id+"' and s_id='"+s_id+"' ");
        if(rs.next())
        {
            session.setAttribute("msg","certified");
            response.sendRedirect("i_viewResults.jsp");
        }
        else{
        DAL.DBConnect.ExecuteQuery("INSERT INTO `certified`( `s_id`, `c_id`, `i_id`) VALUES('"+s_id+"','"+c_id+"','"+i_id+"') ");
      //  out.print("INSERT INTO `certified`( `s_id`, `c_id`, `i_id`) VALUES('"+s_id+"','"+c_id+"','"+i_id+"') ");
        response.sendRedirect("i_viewResults.jsp");
        session.setAttribute("msg","sucess");
        }
        
        
        %>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
