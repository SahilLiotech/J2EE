<%@include file="connection.jsp" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
    </head>
    <body>
        <%
         String name=(String)session.getAttribute("uname");
         ResultSet rs = null;
        Statement st = null;
    
        try {
       
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM userdata WHERE name='" + name + "'");
            
            rs.next();
        }
        catch(Exception e){
            e.getMessage();
        }
        
%>
        <table border="1" width="400px" align="center">
            <tr><th colspan="2" align="center" >Account Information</th></tr>
            <tr>
                <td>Name</td>
                <td><%=rs.getString("name")%></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%=rs.getString("email")%></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><%=rs.getString("password")%></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><%=rs.getString("country")%></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%=rs.getString("gender")%></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                   <a href="updateform.jsp?id=<%= rs.getInt("id") %>">Update</a>
                   <a href="delete.jsp?id=<%= rs.getInt("id") %>">Delete</a>
                   <a href="home.jsp">Home</a>
                </td>
            </tr>
        </table>
    </body>
</html>
