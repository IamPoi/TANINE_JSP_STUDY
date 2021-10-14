<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>first.jsp</h3>
<jsp:include page="second.jsp">
	<jsp:param value="<%= new java.util.Date() %>" name="date"/>
</jsp:include>
<div>JAVA SERVER PAGE</div>

</body>
</html>