package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.MemberDTO;

public class MemberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ArrayList<MemberDTO> list = null;
	MemberDTO dto = null;
	

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

	public int Insert(MemberDTO dto) {

		Connection();

		try {
			String sql = "insert into member values (?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
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
	
	public ArrayList<MemberDTO> Select(){
		
		list = new ArrayList<MemberDTO>();
		
		Connection();
		
		try {
			String sql = "select * from member";
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				
				
				dto = new MemberDTO(id, pw, name);
				list.add(dto);
			}
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Close();

		}
		
		return list;
	}
	
	public int Update(MemberDTO dto) {
		
		Connection();

		try {
			String sql = "update member set name = ? where id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getId());
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
	
public int Delete(String id) {
		
		Connection();

		try {
			String sql = "delete from member where id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
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

public MemberDTO Login(MemberDTO dto){
	
	list = new ArrayList<MemberDTO>();
	
	Connection();
	
	try {
		String sql = "select * from member where id = ? and pw = ?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getId());
		psmt.setString(2, dto.getPw());
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			
			
			dto = new MemberDTO(id, pw, name);
			list.add(dto);
		}
		

	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		Close();

	}
	
	return dto;
	
	
}

public ArrayList<MemberDTO> Login_List(MemberDTO dto){
	
	list = new ArrayList<MemberDTO>();
	
	Connection();
	
	try {
		String sql = "select * from member where id = ? and pw = ?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getId());
		psmt.setString(2, dto.getPw());
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			
			
			dto = new MemberDTO(id, pw, name);
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
