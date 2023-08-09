 

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				try {
					
					  response.setContentType("text/html");
					
					  PrintWriter out=response.getWriter();
					
					  String name=request.getParameter("name");
					  String email=request.getParameter("email");
   					  String password=request.getParameter("password");
					

					   
					   Class.forName("com.mysql.jdbc.Driver");
					   
					   System.out.println("Driver Loaded Successfully....");
					   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/userdata","root","");
					   PreparedStatement ps=con.prepareStatement("insert into data(name, email, password) values(?,?,?)");
					   
					   ps.setString(1,name);
					   ps.setString(2,email);
					   ps.setString(3,password);
					   
					   int i=ps.executeUpdate();
					   
					   if (i>0) {
						out.print("<p>Record Saved Successfully Login First For Accessing Home Page</p>");
						request.getRequestDispatcher("index.html").include(request,response);
					} else {
						out.print("Sorry! There Is Some Error While Signup Process");
					}
					   
					
					}
				catch(Exception e)
				{
					e.getMessage();
				}
//				out.close();
	}

}
