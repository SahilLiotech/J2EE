import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");

		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		if (session != null) {
			session.invalidate();
			out.print("Successfully logged out <br />");
			request.getRequestDispatcher("home.html").include(request, response);
		} else {
			out.print("You are not logged in yet! Please Login First!<br />");
			request.getRequestDispatcher("home.html").include(request, response);
			request.getRequestDispatcher("login.html").include(request, response);
		}
	}
}
