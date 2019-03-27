<%-- 
    Document   : instructorreg
    Created on : Mar 7, 2019, 3:01:14 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instructor Registration</title>
    </head>
    <body>
        <h1>New instructor Registration</h1>
                <table>
            <form action="instructorregaction.jsp" method="post">
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="i_name"></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input type="text" name="i_email"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="i_password"></td>
                </tr>
                <tr>
                    <td>Confirm password:</td>
                    <td><input type="password" name="i_password_check"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"></td>
                </tr>
                
            </form>
        </table>
    </body>
</html>
