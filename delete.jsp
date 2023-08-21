<%@include file="connection.jsp" %>
<%@page import="java.sql.*"%>
<%
    String sid=request.getParameter("id");
    int id=Integer.parseInt(sid);
    
    PreparedStatement pstmt=con.prepareStatement("DELETE FROM userdata WHERE id=?");
   
    pstmt.setInt(1,id);
    pstmt.executeUpdate();

    con.close();
    
request.getRequestDispatcher("index.jsp").forward(request, response);
    
%>