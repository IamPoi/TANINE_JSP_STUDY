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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("admin") && pw.equals("1234")){
		
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		out.println("세션 설정 성공");
		out.println(id+"님 환영합니다.");
	}else {
		out.print("세션 설정 실패");
	}
	
%>

</body>
</html>