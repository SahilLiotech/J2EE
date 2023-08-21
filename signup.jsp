<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <script src="SignupValidation.js"></script>
    </head>
    <body>
        <form name="form" action="register.jsp" onsubmit="return validateForm()">
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
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register     "></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">Already Have An Account? <a href="index.jsp">Login</a></td>
                </tr>
            </table>
        </form>
    </body>
</html>
