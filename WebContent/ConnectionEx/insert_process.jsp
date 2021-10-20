<%@page import="java.util.ArrayList"%>
<%@page import="DTO.MemberDTO"%>
<%@page import="DAO.MemberDAO"%>
<%@page import="DAO.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	ArrayList<MemberDTO> member_list = null;
	MemberDAO dao = new MemberDAO();
	MemberDTO member = null;
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	
	member = new MemberDTO(id,pw,name);
	
	int cnt = dao.Insert(member);
	
	if(cnt != 0){
		out.print("INSERT 성공");
	}else{
		out.print("INSERT X");
	}
	out.print("<br>");
	
	String change_id = request.getParameter("change_id");
	String change_name = request.getParameter("change_name");
	
	MemberDTO change = new MemberDTO(change_name,change_id);
	
	cnt = dao.Update(change);
	
	if(cnt != 0){
		out.print("UPDATE 성공");
	}else{
		out.print("UPDATE X");
	}
	
	out.print("<br>");
	
	String delete_id = request.getParameter("delete_id");
	
	cnt = dao.Delete(delete_id);
	
	if(cnt != 0){
		out.print("DELETE 성공");
	}else{
		out.print("DELETE X");
	}
	
	out.print("<br>");
	
	member_list = dao.Select();
	
	for(int i = 0; i < member_list.size(); i++){
		out.println(member_list.get(i).getId());
		out.println(member_list.get(i).getPw());
		out.println(member_list.get(i).getName()+"<br>");
	}
	%>
	

</body>
</html>