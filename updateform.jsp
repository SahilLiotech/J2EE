<%@include file="connection.jsp"%>
<%@page import="java.sql.*"%>
<%! String name, email, password, country, gender; %>
<%
    String sid = (String) request.getParameter("id");
    int id = Integer.parseInt(sid);

    ResultSet rs = null;
    Statement st = null;

    st = con.createStatement();
    rs = st.executeQuery("SELECT * FROM userdata WHERE id='" + id + "'");

    if (rs.next()) {
        name = rs.getString("name");
        email = rs.getString("email");
        password = rs.getString("password");
        country = rs.getString("country");
        gender = rs.getString("gender");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Page</title>
    <script src="SignupValidation.js"></script>
</head>
<body>
<form name="form" action="update.jsp">
    <table border="1" align="center">
        <tr>
            <th colspan="2" align="center">Update Data</th>
        </tr>
        <tr>
            <td colspan="2"><input type="hidden" name="updateId" value="<%=id%>"></td>   
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="email" name="email" value="<%= email %>"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" value="<%= password %>"></td>
        </tr>
        <tr>
            <td>Country</td>
            <td>
                <select name="country">
                    <option value="India" <%= country.equals("India") ? "selected" : "" %>>India</option>
                    <option value="USA" <%= country.equals("USA") ? "selected" : "" %>>USA</option>
                    <option value="UK" <%= country.equals("UK") ? "selected" : "" %>>UK</option>
                    <option value="UAE" <%= country.equals("UAE") ? "selected" : "" %>>UAE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input type="radio" name="gender" value="male" <%= gender.equals("male") ? "checked" : "" %>>Male
                <input type="radio" name="gender" value="female" <%= gender.equals("female") ? "checked" : "" %>>Female
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Update"></td>
        </tr>
    </table>
</form>
</body>
</html>
