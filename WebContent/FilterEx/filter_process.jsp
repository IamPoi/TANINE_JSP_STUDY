<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	String name = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<div>�Էµ� �� : <%=name %></div>
<div>�Էµ� �� : <%=pw %></div>

</body>
</html>