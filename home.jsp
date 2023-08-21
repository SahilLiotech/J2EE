<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>
        <% out.print("Welcome "+session.getAttribute("uname"));%>
        </h1>
        <br><a href="logout.jsp">Logout</a>
        <a href="profile.jsp">Profile</a>
    </body>
</html>
