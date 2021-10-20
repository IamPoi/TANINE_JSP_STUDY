<%@page import="DTO.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 성공</h1>

<%
	
	// ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) session.getAttribute("list");

	/*
	for (int i = 0; i < list.size(); i++){
		out.println(list.get(i).getId());
		out.println(list.get(i).getPw());
		out.println(list.get(i).getName());
	}
	*/
	
	
	MemberDTO member = (MemberDTO) request.getAttribute("member");
	
	//	MemberDTO dto = (MemberDTO) session.getAttribute("member");
	
		
	out.println(member.getId());
	out.println(member.getPw());
	out.println(member.getName());
	
%>
<a href = "login.jsp">Button</a>
	

</body>
</html>