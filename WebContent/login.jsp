<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@include file = "menu.jsp" %>

<form action="Login.do" method="post">
	아이디 : <input type = "text" name = "id">
	비밀번호 : <input type = "password" name = "pw">
	<input type = "submit">
</form>

<%@include file = "footer.jsp" %>
</body>
</html>