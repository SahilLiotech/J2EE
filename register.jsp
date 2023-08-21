<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<%!PreparedStatement pstmt;%>
<%
  String name=request.getParameter("name");
  String email=request.getParameter("email");
  String password=request.getParameter("password");
  String country=request.getParameter("country");
  String gender=request.getParameter("gender");
  
  
pstmt=con.prepareStatement("insert into userdata(name,email,password,country,gender) values(?,?,?,?,?)");
pstmt.setString(1,name);
pstmt.setString(2,email);
pstmt.setString(3,password);
pstmt.setString(4,country);
pstmt.setString(5,gender);
pstmt.executeUpdate();

out.print("<p align='center'>Record Saved Successfully..</p>");

request.getRequestDispatcher("index.jsp").include(request, response);
%>