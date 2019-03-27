<%-- 
    Document   : deptinsertion
    Created on : Mar 14, 2019, 9:34:58 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adding department</title>
    </head>
    <body>
        <h1>Add department</h1>
        <form action="deptinsertaction.jsp" method="POST">
            <table>
                <tr><td> department name </td><td> <input type="text" name="dept"></td>
                <tr><td></td><td><input type="submit" value = "add "></td></tr>
            </table>
        </form>
    </body>
</html>
