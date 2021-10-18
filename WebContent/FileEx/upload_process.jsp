<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload",5*1024*1024,"EUC-KR", new DefaultFileRenamePolicy());
	
		String name = multi.getParameter("name");
		String title = multi.getParameter("title");
		Enumeration files = multi.getFileNames();
		
		String file = (String)files.nextElement();
		String fileName = multi.getFilesystemName(file);
	%>
		
		<%=name %><br>
		<%=title %><br>
		<%=fileName %><br>


</body>
</html>