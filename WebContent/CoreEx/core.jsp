<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>Browser 변수 값 설정</h3>
	<c:set var = "browser" value = "${header['User-Agent']}"></c:set>
	<br>
	<c:out value="${browser}"></c:out>
	<div>browser 변수 값 제거 후</div>
	<c:remove var = "browser"></c:remove>
	<c:out value="${browser}"></c:out>
	
</body>
</html>