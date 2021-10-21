package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.BoardDTO;
import DTO.MemberDTO;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	BoardDTO dto = null;
	ArrayList<BoardDTO> list = null;

	public void Connection() { // DB 연결
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "system";
			String db_pw = "system";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

			System.out.println("연결 성공");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void Close() { // DB 연결 해제
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int Insert(BoardDTO dto) {

		Connection();

		try {
			String sql = "insert into board values (num_increment.NEXTVAL,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getSubject());
			psmt.setString(4, dto.getContent());
			cnt = psmt.executeUpdate();

			if (cnt != 0) {
				System.out.println("성공");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Close();

		}

		return cnt;
	}
	
public ArrayList<BoardDTO> Select(){
		
		list = new ArrayList<BoardDTO>();
		
		Connection();
		
		try {
			String sql = "select * from board";
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				int num = rs.getInt(1);
				String id = rs.getString(2);
				String name = rs.getString(3);
				String sub = rs.getString(4);
				String content = rs.getString(5);
				
				
				dto = new BoardDTO(num, id, name, sub, content);
						
				list.add(dto);
			}
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Close();

		}
		
		return list;
	}

}
