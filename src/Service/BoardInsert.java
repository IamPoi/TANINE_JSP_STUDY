package Service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import Controller.FrontCommand;
import DAO.BoardDAO;
import DTO.BoardDTO;

//@WebServlet("/BoardInsert")
public class BoardInsert extends HttpServlet implements FrontCommand {
	private static final long serialVersionUID = 1L;
       
    public BoardInsert() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
	}


	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String sub = request.getParameter("sub");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO(id, name, sub, content);
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.Insert(dto);
		
		if (cnt != 0) {
			System.out.println("등록 성공");
			
		}
		
		
	}

}
