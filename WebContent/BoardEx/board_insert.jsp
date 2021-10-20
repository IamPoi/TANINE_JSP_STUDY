<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="BoardInsert.do" method="post">
		아이디 : <input type = "text" name = "id">
		이름 : <input type = "text" name = "name">
		제목 : <input type = "text" name = "sub">
		내용 : <textarea rows="" cols="" name = "content"></textarea>
		<input type = "submit">
	</form>

</body>
</html>