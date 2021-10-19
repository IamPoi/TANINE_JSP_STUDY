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
	
	if(id.equals("admin")&&pw.equals("1234")){
		Cookie cookie_id = new Cookie("id",id);
		Cookie cookie_pw = new Cookie("pw",pw);
		out.print("쿠키 생성 성공");
	}else{
		out.print("실패");
	}

%>

</body>
</html>