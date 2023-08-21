<%@page import="java.sql.*" %>
<%! public Connection con; %>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/loginapp", "root", "");
//        out.print("Driver loaded...");
    } catch(Exception e) {
        out.print("Error: " + e.getMessage());
    }
%>
