<%-- 
    Document   : LoginAction
    Created on : Mar 28, 2019, 3:47:18 PM
    Author     : test
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%String email=request.getParameter("email");
        String password=request.getParameter("password");
            // out.print("Select * from admin where a_email='"+email+"' and a_password='"+password+"'");
       ResultSet rs = DAL.DBConnect.SelectData("Select * from admin where a_email='"+email+"' and a_password='"+password+"'");
       ResultSet rs1 = DAL.DBConnect.SelectData("Select * from student where s_email='"+email+"' and s_password='"+password+"'");
       ResultSet rs2 = DAL.DBConnect.SelectData("Select * from instructor where i_email='"+email+"' and i_password='"+password+"'");
       session.setAttribute("type", "" ); 
       if(rs.next())
        { 
        String dbemail=rs.getString("a_email");
        String dbpassword=rs.getString("a_password");
        String username=rs.getString("a_name");
     //   out.print("Select * from admin where a_email="+email+" and a_password="+password);
        if(email.equals(dbemail) && password.equals(dbpassword))
        {
            session.setAttribute("user",username );
             session.setAttribute("type", "admin" );
//THIS IS HOW WE DECLARE THE USER IN A SESSION
			response.sendRedirect("home.jsp"); //AND WE REDIRECTED TO LOGIN PAGE
			
           // response.sendRedirect("home.jsp");
        }
        
        }
        else 
        {
             out.print("Sorry, username or password error!");
             String msg="Sorry, username or password error!";
          %>  
<jsp:include page="Login.jsp"></jsp:include>  
<%  
        } 
        %>
        <% 
            if(rs1.next())
        { 
        String dbemail=rs1.getString("s_email");
        String dbpassword=rs1.getString("s_password");
        String username=rs1.getString("s_name");
        String s_id=rs1.getString("s_id");
     //   out.print("Select * from admin where a_email="+email+" and a_password="+password);
        if(email.equals(dbemail) && password.equals(dbpassword))
        {
            session.setAttribute("user",username );
            session.setAttribute("s_id", s_id ); 
            session.setAttribute("type", "student" );
            //THIS IS HOW WE DECLARE THE USER IN A SESSION
            response.sendRedirect("s_home.jsp"); //AND WE REDIRECTED TO LOGIN PAGE
			
           // response.sendRedirect("home.jsp");
        }
        
        }
        else 
        {
             out.print("Sorry, username or password error!");
             String msg="Sorry, username or password error!";
          %>  
<jsp:include page="Login.jsp"></jsp:include>  
<%  
        } 
        %>
             <% 
            if(rs2.next())
        { 
        String dbemail=rs2.getString("i_email");
        String i_id=rs2.getString("i_id");
        String dbpassword=rs2.getString("i_password");
        String username=rs2.getString("i_name");
     //   out.print("Select * from admin where a_email="+email+" and a_password="+password);
        if(email.equals(dbemail) && password.equals(dbpassword))
        {
            session.setAttribute("user",username );//THIS IS HOW WE DECLARE THE USER IN A SESSION
             session.setAttribute("i_id", i_id ); 
            session.setAttribute("type", "instructor" );
			response.sendRedirect("i_home.jsp"); //AND WE REDIRECTED TO LOGIN PAGE
			
           // response.sendRedirect("home.jsp");
        }
        
        }
        else 
        {
             out.print("Sorry, username or password error!");
             String msg="Sorry, username or password error!";
          %>  
<jsp:include page="Login.jsp"></jsp:include>  
<%  
        } 
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
            </body>
</html>
