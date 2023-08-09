import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		if (session == null) {
			out.print("Please Login First! <br />");
			request.getRequestDispatcher("index.html").include(request, response);
		} else {
			request.getRequestDispatcher("home.html").include(request, response);
                        out.print("Welcome, " + session.getAttribute("username") + "! This is homepage. <br />");
		}
	}
}
