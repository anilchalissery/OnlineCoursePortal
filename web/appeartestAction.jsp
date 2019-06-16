<%-- 
    Document   : appeartestAction
    Created on : May 21, 2019, 11:05:15 AM
    Author     : test
--%>
<%@page import="DAL.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%
String snoQ=request.getParameter("noQ");
String s_id=(String)session.getAttribute("s_id");
int noQ=Integer.parseInt(snoQ);
int i=1;
int count=0;
String c_id=request.getParameter("c_id");
ResultSet rs=DBConnect.SelectData("select * from test where c_id="+c_id);
while(noQ>=i){
    //String res=request.getParameter(String.valueOf(i));
    String res=request.getParameter("q"+i);
    while(rs.next()){
        if(rs.getString("answer").equals(res)){
            count++;
        }
      break;      
    }
    i++;
}
DAL.DBConnect.ExecuteQuery("INSERT INTO `testresults`( `s_id`, `c_id`, `score`) VALUES ('"+s_id+"','"+c_id+"','"+count+"')");
//out.print("INSERT INTO `testresults`( `s_id`, `c_id`, `score`) VALUES ('"+s_id+"','"+c_id+"','"+count+"')");
response.sendRedirect("s_completedtest.jsp");

%>