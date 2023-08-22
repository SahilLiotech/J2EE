<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<%
  String sid = request.getParameter("updateId");
  int id = Integer.parseInt(sid);


  try{
  
  String name=request.getParameter("name");
  String email=request.getParameter("email");
  String password=request.getParameter("password");
  String country=request.getParameter("country");
  String gender=request.getParameter("gender");
  
  PreparedStatement pstmt=con.prepareStatement("UPDATE userdata SET name=?,email=?,password=?,country=?,gender=? WHERE id=?");
  pstmt.setString(1, name);
  pstmt.setString(2, email);
  pstmt.setString(3, password);
  pstmt.setString(4, country);
  pstmt.setString(5, gender);
  pstmt.setInt(6,id);
  
  pstmt.executeUpdate();
  
  request.getRequestDispatcher("index.jsp").forward(request,response);
  con.close();
  
  
  }
  catch(Exception e){
      e.getMessage();
  }
%>
