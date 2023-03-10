package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.porder.implPorder;

@WebServlet("/deletePorderController")
public class deletePorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public deletePorderController() {
        super();
       }


    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID = request.getParameter("id");
		
		if(ID!="" && ID!=null) 
		{
			int Id = Integer.parseInt(ID);
			new implPorder().delete(Id);
		}
		response.sendRedirect("porder/delete.jsp");
	}

}
