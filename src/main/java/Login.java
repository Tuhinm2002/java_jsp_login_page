import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Login")
public class Login extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{

        String uname = req.getParameter("uname");
        String passw = req.getParameter("passw");
        
        LoginDao log = new LoginDao(uname, passw);
        boolean entry = log.checkEntry();
        
        if(entry){
            HttpSession session = req.getSession();
            session.setAttribute("user",uname);
            res.sendRedirect("Home.jsp");
        }
        else{
            res.sendRedirect("Login.jsp");
        }
    }
}
