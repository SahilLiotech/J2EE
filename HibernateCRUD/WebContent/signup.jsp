<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form name="form" action="ControllerUserData" method="post" onsubmit="return validateForm()">
            <table border="1" align="center">
                <tr>
                    <th colspan="2" align="center">Login</th>
                </tr>                
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
            
                 <tr>
                    <td>Email</td>
                    <td><input type="email" name="email"></td>
                </tr>
                
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                
                <tr>
                    <td>Country</td>
                    <td>
                        <select name="country">
                            <option value="India">India</option>
                            <option value="USA">USA</option>
                            <option value="UK">UK</option>
                            <option value="UAE">UAE</option>
                        </select>
                    </td>
                </tr>
                
                 <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="male" checked="">Male
                        <input type="radio" name="gender" value="male">Female
                    </td>
                </tr>
                 <tr hidden>
                    <td> <input type="hidden" name="action" value="signup"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">Already Have An Account? <a href="index.jsp">Login</a></td>
                </tr>
            </table>
        </form>
</body>
</html>