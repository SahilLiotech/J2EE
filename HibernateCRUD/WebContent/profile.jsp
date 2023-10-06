<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>User Profile</h1>
    
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Country</th>
            <th>Gender</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>${loggedInUser.name}</td>
            <td>${loggedInUser.email}</td>
            <td>${loggedInUser.password}</td>
            <td>${loggedInUser.country}</td>
            <td>${loggedInUser.gender}</td>
            <td colspan='2'><a href="editUser.jsp?userId=${loggedInUser.id}">Edit</a>
    		 <a href="ControllerUserData?action=delete&userId=${loggedInUser.id}">Delete</a></td>
        </tr>
    </table>
    
    <br>
    <a href="logout.jsp">Logout</a>
</body>
</html>