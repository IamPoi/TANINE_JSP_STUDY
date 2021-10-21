<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@ include file = "menu.jsp" %>
	<br>
	<div style = "width: 100; text-align: center;" >
	<form action="BoardInsert.do" method="post" >
		아이디 : <input type = "text" name = "id">
		이름 : <input type = "text" name = "name">
		제목 : <input type = "text" name = "sub"><br><br>
		내용<br><textarea rows="10" cols="100" name = "content" ></textarea><br>
		<div style="width: 100%; text-align: right; padding-right: 25%;">
		<input type = "submit" value = "등록">
		</div>
	</form>
	
	<%@ include file = "footer.jsp" %>

	</div>
</body>
</html>