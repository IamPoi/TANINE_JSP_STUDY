<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>회원 가입</h1>

<form action="">
	이름 : <input type = "text" name = "name"><br>
	아이디 : <input type = "text" name = "id"><br>
	비밀번호 : <input type = "password" name = "pw"><br>
	연락처 : <input type = "text" name = "phone"><br>
	
	성별 : 남자<input type = "radio" name = "sex" value="남자"> 여자<input type = "radio" name = "sex" value="여자"><br>
	취미 : 축구<input type = "checkbox" value = "축구"> 야구<input type = "checkbox" value = "축구"> 농구<input type = "checkbox" value = "농구"><br>
	<textarea rows="3" cols="30" placeholder="가입 인사"></textarea><br>
	
	
	
</form>

</body>
</html>