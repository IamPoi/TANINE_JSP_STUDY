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
	이름 <input type="text" name = "name"><br>
	제목 <input type="text" name = "title"><br>
	파일 <input type="file" name = "file"><br>
	
	<input type = "submit">
		
</form>

</body>
</html>