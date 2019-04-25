<%-- 
    Document   : studentreg
    Created on : Mar 7, 2019, 2:43:36 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student registration</title>
    </head>
    <body>
        <h1>New Student Registration</h1>
        <table>
            <form action="studentregaction.jsp" method="post">
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="s_name"></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input type="text" name="s_email"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="s_password"></td>
                </tr>
                <tr>
                    <td>Confirm password:</td>
                    <td><input type="password" name="s_password_check"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register" class="btn btn-primary"></td>
                </tr>
                
            </form>
        </table>
    </body>
</html>
