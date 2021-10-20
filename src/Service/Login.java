package Service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.FrontCommand;
import DAO.MemberDAO;
import DTO.MemberDTO;


//@WebServlet("/Login")
public class Login extends HttpServlet implements FrontCommand {
	private static final long serialVersionUID = 1L;


	public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}


	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				System.out.println("gd");
				
				ArrayList<MemberDTO> list = null;
				
				MemberDTO member = null;
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				
				MemberDTO dto = new MemberDTO(id, pw);
				
				MemberDAO dao = new MemberDAO();
				
				member = dao.Login(dto);
				
				list = dao.Login_List(dto);
				
				
				
				
				if (member != null) {
					
					request.setAttribute("member", member);
					RequestDispatcher rd = request.getRequestDispatcher("LoginSuccess.jsp");
					rd.forward(request, response);
					
					
//					HttpSession session = request.getSession(); 
////					session.setAttribute("member", member);
//					session.setAttribute("list", list);
//					response.sendRedirect("LoginSuccess.jsp");
					
				}
		
	}

}
