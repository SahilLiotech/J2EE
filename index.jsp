<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="loginauth.jsp" method="post">
            <table border="1" align="center">
                <tr>
                    <th colspan="2" align="center">Login</th>
                </tr>                
                <tr>
                    <td>UserName</td>
                    <td><input type="text" name="uname"></td>
                </tr>
            
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><button type="submit" value="submit">Login</button></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">Don't Have An Account? <a href="signup.jsp">Signup</a></td>
                </tr>
            </table>
        </form>
    </body>
</html>
