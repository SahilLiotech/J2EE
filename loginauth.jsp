<%@include file="connection.jsp" %>
<%@page import="java.sql.*"%>
<%
    String uname = request.getParameter("uname");
    String password = request.getParameter("password");
    
    ResultSet rs = null;
    Statement st = null;
    
    try {
       
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM userdata WHERE name='" + uname + "' AND password='" + password + "' ");

            if (!rs.next()) {
%>
            <script>
                alert("Invalid username or password. Please try again.");
                window.location.href = "index.jsp";
            </script>
<%
   
               
            } else {
                session.setAttribute("uname", rs.getString("name"));
                request.getRequestDispatcher("home.jsp").forward(request, response);
               
            }
        
    } catch (Exception e) {
        e.printStackTrace(); // Print the exception details for debugging
    }     
%>
