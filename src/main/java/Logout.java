
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet{

	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		
		HttpSession session = req.getSession();
		session.removeAttribute("user");
		session.invalidate();
		res.sendRedirect("Login.jsp");
		
	}
}
