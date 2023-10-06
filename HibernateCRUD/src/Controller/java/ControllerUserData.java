package Controller.java;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.hibernate.*;
import org.hibernate.cfg.*;
import Model.User;

@WebServlet("/ControllerUserData")
public class ControllerUserData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        if ( request.getParameter("action").equals("delete")) {
	            delete(request, response);
	        }
	        else
	        {
	        	System.out.println("Something went wrong");
	        }
	    }
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
            if (request.getParameter("action").equals("login")) {   
            	 login(request,response);
            }
            else if(request.getParameter("action").equals("signup")){
                signup(request,response);
            }
            else if (request.getParameter("action").equals("update")) {
                update(request, response);
            }
	}
	 private static void signup(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException{
	        
	        String name = req.getParameter("name");
	        String email = req.getParameter("email");
	        String password = req.getParameter("password");
	        String country = req.getParameter("country");
	        String gender = req.getParameter("gender");
	        
	        User user=new User();
	        
	        PrintWriter out=res.getWriter();
	        
	        Session session= new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
	        
	        Transaction t=session.beginTransaction();
	        
	        user.setName(name);
	        user.setEmail(email);
	        user.setPassword(password);
	        user.setCountry(country);
	        user.setGender(gender);
	        
	        session.save(user);
	        t.commit();
	        
	        out.print("<script>alert('Registered Successfully..')</script>");
	        
	        req.getRequestDispatcher("index.jsp").forward(req, res);
	        
	 }
	 
	 private static void login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		   
		        PrintWriter out = res.getWriter();

		        Session session = new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();

		        Transaction t = session.beginTransaction();

		        String uname = req.getParameter("uname");
		        String password = req.getParameter("password");

		        // Query the database for the user by name
		        User user = (User) session.createQuery("FROM User WHERE name = :uname")
		                .setParameter("uname", uname)
		                .uniqueResult();

		        if (user != null && user.getPassword().equals(password)) {
		            // Successful login: forward to home.jsp
		        	 HttpSession httpSession = req.getSession();
		             httpSession.setAttribute("loggedInUser", user);
		        	
		            req.getRequestDispatcher("home.jsp").forward(req, res);
		        } else {
		            // Incorrect credentials: display an error message and include index.jsp
		            out.print("Please login with correct credentials");
		            req.getRequestDispatcher("index.jsp").include(req, res);
		        }

		        t.commit();
		        session.close();
	 }
	 
	 private void delete(HttpServletRequest req, HttpServletResponse res)
	            throws ServletException, IOException {
	        String userIdString = req.getParameter("userId");
	        int userId = Integer.parseInt(userIdString);

	        PrintWriter out = res.getWriter();

	        Session session = new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();

	        Transaction t = session.beginTransaction();
	        
	 
	            // Load the User object to delete
	            User user = (User) session.get(User.class, userId);

	            if (user != null) {
	                // Delete the user
	                session.delete(user);
	                t.commit();
	                req.getRequestDispatcher("index.jsp").forward(req, res);
	            }
	            else
	            {
	            	out.print("Somthing Went Wrong..");
	            }

	    }
	 
	 private void update(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		    String userIdString = req.getParameter("userId");
		    int userId = Integer.parseInt(userIdString);

		    String name = req.getParameter("name");
		    String email = req.getParameter("email");
		    String password = req.getParameter("password");
		    String country = req.getParameter("country");
		    String gender = req.getParameter("gender");

		    PrintWriter out = res.getWriter();

		    Session session = new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();

		    Transaction t = session.beginTransaction();

		    // Load the User object to update
		    User user = (User) session.get(User.class, userId);

		    if (user != null) {
		        // Update the user information
		        user.setName(name);
		        user.setEmail(email);
		        user.setPassword(password);
		        user.setCountry(country);
		        user.setGender(gender);

		        session.update(user);
		        t.commit();

		        // Redirect to the profile page after updating
		        req.getRequestDispatcher("index.jsp").forward(req, res);
		    } else {
		        out.print("Something Went Wrong..");
		    }
		}


}

 
