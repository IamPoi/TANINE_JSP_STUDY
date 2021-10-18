<%@page import="org.apache.tomcat.util.http.fileupload.FileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
	function check() {
		alert("이름은" + document.frm.name.value+ "입니다");
	}
</script>

<form action="" name = "frm">
	이름 : <input type = "text" name = "name">
	<input type = "submit" onclick="check()">
</form>

<% FileItem item = new FileItem(); 
	FileUpload fu = new FileUpload();
%>

</body>
</html>