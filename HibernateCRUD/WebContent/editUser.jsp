<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Edit User Profile</h1>
    <form action="ControllerUserData" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="userId" value="${loggedInUser.id}">
        <label for="name">Name:</label>
        <input type="text" name="name" value="${loggedInUser.name}">
        <br>
        <label for="email">Email:</label>
        <input type="email" name="email" value="${loggedInUser.email}">
        <br>
        <label for="password">Password:</label>
        <input type="password" name="password" value="${loggedInUser.password}">
        <br>
        <label for="country">Country:</label>
        <input type="text" name="country" value="${loggedInUser.country}">
        <br>
        <label for="gender">Gender:</label>
        <input type="radio" name="gender" value="Male" ${loggedInUser.gender == 'Male' ? 'checked' : ''}> Male
        <input type="radio" name="gender" value="Female" ${loggedInUser.gender == 'Female' ? 'checked' : ''}> Female
        <br>
        <input type="submit" value="Save">
    </form>
</body>
</html>