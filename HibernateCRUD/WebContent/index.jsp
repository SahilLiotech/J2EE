<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="ControllerUserData" method="post">
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
              
                <tr hidden>
                    <td> <input type="hidden" name="action" value="login"></td>
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