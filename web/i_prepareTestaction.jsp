<%-- 
    Document   : i_prepareTestaction
    Created on : May 20, 2019, 12:14:48 PM
    Author     : test
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAL.DBConnect"%>
<%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
				String uid = (String)session.getAttribute("user");
				if (uid == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <jsp:forward page="Login.jsp"/>
		<%	
				}
				
		%> 
<%
 String c_id=request.getParameter("c_id");
String Question=request.getParameter("Question");
String answer=request.getParameter("answer");
String optiona=request.getParameter("optiona");
String optionb=request.getParameter("optionb");
String optionc=request.getParameter("optionc");
String optiond=request.getParameter("optiona");
int q_no;
ResultSet rs=DBConnect.SelectData("SELECT count(*) FROM `test` WHERE c_id="+c_id);
if(rs.next())
{
    String sq_no=rs.getString("count(*)");
    q_no =Integer.parseInt(sq_no);
     q_no = q_no+1;
}
else
{
    q_no=1;
          
}
DAL.DBConnect.ExecuteQuery("INSERT INTO `test`( `c_id`, `q_no`, `Question`, `oa`, `ob`, `oc`, `od`, `answer`) VALUES ('"+c_id+"','"+q_no+"','"+Question+"','"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"','"+answer+"')");
//out.print("INSERT INTO `test`( `c_id`, `q_no`, `Question`, `oa`, `ob`, `oc`, `od`, `answer`) VALUES ('"+c_id+"','"+q_no+"','"+Question+"','"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"','"+answer+"')");
response.sendRedirect("i_prepareTest.jsp?c_id="+c_id);









/*ResultSet rs1=DBConnect.SelectData("SELECT count(*) FROM `questionpaper` WHERE c_id="+c_id);
rs1.next();
String q_no=rs1.getString("count(*)");
int q_noi=Integer.parseInt(q_no);
q_noi=q_noi+1;
DAL.DBConnect.ExecuteQuery("INSERT INTO `questionpaper`( `q_no`, `Question`, `c_id`) VALUES ('"+q_noi+"','"+Question+"','"+c_id+"')");
out.print("INSERT INTO `questionpaper`( `q_no`, `Question`, `c_id`) VALUES ('"+q_noi+"','"+Question+"','"+c_id+"')");

ResultSet rs=DBConnect.SelectData("select qp_id from questionpaper where c_id="+c_id);
rs.next();
String qp_id=rs.getString("qp_id");
DAL.DBConnect.ExecuteQuery("INSERT INTO `optionsanswer`( `optiona`, `optionb`, `optionc`, `optiond`, `answer`, `qp_id`,`q_no`, `c_id`) VALUES ('"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"','"+answer+"','"+qp_id+"','"+q_noi+"','"+c_id+"')");
out.print("INSERT INTO `optionsanswer`( `optiona`, `optionb`, `optionc`, `optiond`, `answer`, `qp_id`,`q_no`, `c_id`) VALUES ('"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"','"+answer+"','"+qp_id+"','"+q_noi+"','"+c_id+"')");

response.sendRedirect("i_prepareTest.jsp");
*/






%>