<%-- 
    Document   : deptinsertaction
    Created on : Mar 14, 2019, 9:47:26 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
        <%
        String dept=request.getParameter("dept");
        String type = (String)session.getAttribute("type");
DAL.DBConnect.ExecuteQuery("INSERT INTO `department`( `dept_name`) VALUES ('"+dept+"')");
//response.sendRedirect("depttable.jsp");
try
                                             {
                                             
                                         if(type.equals("instructor"))
                                         {
                                             //out.print(type+"3");
                                             response.sendRedirect("i_addCourse.jsp");
                                         }
                                         else
                                         {
                                             session.setAttribute("msg","sucess");
                                             response.sendRedirect("depttable.jsp");
                                         }
}
catch(Exception e){
    out.print(type+"4");
out.print(e);
}
                                  
        %>
    </head>
    <body>
        <h1></h1>
        <div class="alert alert-success alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-check-circle"></i> Your settings have been succesfully saved
									</div>
    </body>
</html>
