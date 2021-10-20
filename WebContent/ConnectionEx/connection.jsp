<%@page import="DAO.TestDAO"%>
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
	TestDAO dao = new TestDAO();
	
	dao.Connection();
	dao.Close();

%>

</body>
</html>