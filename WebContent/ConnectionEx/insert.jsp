<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>INSERT</h3>
<form action="insert_process.jsp" method="post">
	���̵�: <input type = "text" name = "id"><br>
	��й�ȣ: <input type = "password" name = "pw"><br>
	�̸�: <input type = "text" name = "name"><br>
	<input type = "submit">
</form>
<h3>UPDATE</h3>
<form action="insert_process.jsp" method="post">
	�̸�: <input type = "text" name = "change_name"><br>
	���̵�: <input type = "text" name = "change_id"><br>
	<input type = "submit">
</form>
<h3>DELETE</h3>
<form action="insert_process.jsp" method="post">
	���̵�: <input type = "text" name = "delete_id"><br>
	<input type = "submit">
</form>


</body>
</html>