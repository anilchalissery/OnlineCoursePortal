<%-- 
    Document   : chatinsertion
    Created on : Mar 22, 2019, 10:03:10 AM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>chat insertion</h1>
        <table>
            <form action="chataction.jsp" method="post">
                <tr>
                    <td>Question:</td>
                    <td><textarea name="question" rows="10" cols="18"></textarea></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" ></td>
                </tr>
                
            </form>
        </table>
    </body>
</html>
