<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="process.jsp" method="post">
	<div>
		이름 : <input type = "text" name = "name">
		ID : <input type = "text" name = "id">
		PW : <input type = "password" name = "pw">
		<input type = "submit">
		
		<%response.setIntHeader("Refresh", 5); %>
		
	</div>
</form>

</body>
</html>