package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.porder.implPorder;
import Model.porder;

@WebServlet("/addPorderController")
public class addPorderController extends HttpServlet {

    public addPorderController() {
        super();
    }

    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		porder p = (porder) session.getAttribute("P");
		new implPorder().add(p);
		
		response.sendRedirect("porder/finish.jsp");
	}

}
