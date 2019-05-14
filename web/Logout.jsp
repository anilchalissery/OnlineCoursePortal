<%-- 
    Document   : Logout
    Created on : Mar 29, 2019, 12:09:23 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    
		<% session.invalidate();
            response.sendRedirect("Login.jsp");
                %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		
	  <script>
history.pushState(null,document.title, location.href);
window.addEventListener('popstate',function(event))
{
    history.pushState(null,document.title,location.href);
    
});
</script>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
