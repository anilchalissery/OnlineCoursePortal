<%-- 
    Document   : i_rejectAction
    Created on : Apr 18, 2019, 10:39:53 PM
    Author     : test
--%>

<%
    
String s_id=request.getParameter("s_id");
String c_id=request.getParameter("c_id");
DAL.DBConnect.ExecuteQuery("UPDATE `course_opted` SET `status`='Rejected' WHERE `c_id`='"+c_id+"' and `s_id`='"+s_id+"'");
response.sendRedirect("i_approveStudents.jsp");

%>