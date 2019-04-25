<%-- 
    Document   : rejectInstructorAction
    Created on : Apr 22, 2019, 9:13:21 PM
    Author     : test
--%>
<%@page import="DAL.DBConnect"%>
<%
 
        String i_id=request.getParameter("i_id");
       
        String status="Rejected";
        
        
       // String msg="";
        session.setAttribute("msg","sucess");
        DAL:DBConnect.ExecuteQuery("UPDATE `instructor` SET status='"+status+"' WHERE i_id="+i_id);
                                          //   session.setAttribute("msg","sucess");
                                             response.sendRedirect("approveInstructor.jsp");



%>