

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
                HttpSession session = request.getSession();
		
		String username=request.getParameter("uname");
		String password=request.getParameter("password");
		
		Class.forName("com.mysql.jdbc.Driver");
		   
		System.out.println("Driver Loaded Successfully....");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/userdata","root","");
		PreparedStatement ps=con.prepareStatement("SELECT * FROM DATA WHERE name=? AND password=?");
                ps.setString(1, username);
		ps.setString(2, password);
		   
                ResultSet resultSet = ps.executeQuery();
			
                if (resultSet.next()) {
			session.setAttribute("username", username);
			request.getRequestDispatcher("home.html").include(request, response);
			out.print("Successfully Logged in!");
		}
	   }
	catch(Exception e) {
		e.getMessage();
	}
	
	}

}
