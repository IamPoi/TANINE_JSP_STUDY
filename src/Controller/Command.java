package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.BoardInsert;
import Service.Login;

@WebServlet("*.do")
public class Command extends HttpServlet {
	private static final long serialVersionUID = 1L;	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String URI = request.getRequestURI();
		String path = request.getContextPath();
		FrontCommand command = null;
		String resultURI = URI.substring(path.length()+1);
		System.out.println(resultURI);
		HttpSession session = request.getSession();
		session.setAttribute("maemae",1);
		
		System.out.println(resultURI);
		
		if(resultURI.equals("LoginEx/Login.do")) {
			command = new Login();
		}else if(resultURI.equals("BoardEx/BoardInsert.do")) {
			command = new BoardInsert();
		}
		
		
		
		
		command.execute(request, response);
	}

}