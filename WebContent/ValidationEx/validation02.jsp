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
	
		if(document.frm.name.value == ""){
			alert("�̸��� �Է����ּ���");
			document.frm.name.select();
		}	
	}
</script>

	<form action="" name = "frm">
		<input type = "text" name = "name">
		<input type = "submit" onclick = "check()">
	</form>

</body>
</html>