package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.member.implMember;
import Model.member;

@WebServlet("/addMemberController")
public class addMemberController extends HttpServlet {

    public addMemberController() {
        super();
    }

    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String Username = request.getParameter("username");
    	if(new implMember().selectUser(Username))
    	{
    		response.sendRedirect("member/addMemberError.jsp");
    	}
    	else
    	{
    		String Password = request.getParameter("password");
    		String Name = request.getParameter("name");
    		String Address = request.getParameter("address");
    		String Phone = request.getParameter("phone");
    		String Mobile = request.getParameter("mobile");
    		
    		member m = new member(Username, Password, Name, Address, Phone, Mobile);
    		new implMember().add(m);
    		response.sendRedirect("member/addMemberSuccess.jsp");
    	}
	}

}
