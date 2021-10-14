<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="../FormEx" method="post">
	이름 : <input type = "text" name = "name"><br>
	아이디 : <input type = "text" name = "id"><br>
	비밀번호 : <input type = "password" name = "pw"><br>
	취미 : <input type = "checkbox" name = "hobby" value = "read">독서  
	<input type = "checkbox" name = "hobby" value = "cook">요리  
	<input type = "checkbox" name = "hobby" value = "walk">조깅  
	<input type = "checkbox" name = "hobby" value = "swim">수영  
	<input type = "checkbox" name = "hobby" value = "soccer">축구  
	<input type = "submit" value = "전송">
	<input type = "reset" value = "초기화">
	
</form>

</body>
</html>