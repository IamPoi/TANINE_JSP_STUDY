<%@page import="Prpduct_DTO.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="productDAO" class = "Product_DAO.Repository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	ArrayList<Product> list = productDAO.ret();

%>
<div class = "container">
	<%
		for(int i = 0; i < list.size(); i++){%>
			<h3><%=list.get(i).getId() %></h3>
			<h3><%=list.get(i).getName() %></h3>
			<h3><%=list.get(i).getPrice() %></h3>
			<h3><%=list.get(i).getManufac() %></h3>
			<h3><%=list.get(i).getCategory() %></h3>
			<h3><%=list.get(i).getDescription() %></h3>
		<%}
	%>
</div>

</body>
</html>