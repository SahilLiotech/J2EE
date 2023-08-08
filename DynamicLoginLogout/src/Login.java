

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
		
		String username=request.getParameter("uname");
		String password=request.getParameter("password");
		
		 Class.forName("com.mysql.jdbc.Driver");
		   
		   System.out.println("Driver Loaded Successfully....");
		   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/userdata","root","");
		   Statement stmt=con.createStatement();		   
		   
	   }
	catch(Exception e) {
		e.getMessage();
	}
	
	}

}
