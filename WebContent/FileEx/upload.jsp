<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form name = "fileForm" method = "post" action="upload_process.jsp" enctype="multipart/form-data">
	�̸� <input type="text" name = "name"><br>
	���� <input type="text" name = "title"><br>
	���� <input type="file" name = "file"><br>
	
	<input type = "submit">
		
</form>

</body>
</html>