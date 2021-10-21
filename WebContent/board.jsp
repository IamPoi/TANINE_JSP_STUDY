<%@page import="DTO.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<style>
table{
	width : 70%;
	margin-left: 15%;
	border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    border-left: 1px solid #444444;
    padding: 10px;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  
  h3{
  	text-align: center;
  }
  .board-number{
  	width: 10%;
  }
  
  .board-name{
  	width: 10%;
  }
  
  .a-insert{
  	padding-left: 82%; 
  }
</style>

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-5 text-center">게시글 목록</h3>
		</div>
	</div>
	
	<%
	
		ArrayList<BoardDTO> list = null;
		BoardDAO dao = new BoardDAO();
		list = dao.Select();
		
	%>
	
	<table>

		<tbody class="text-center">
			<tr>
				<td class = "board-number">글 번호</td>
				<td>제목</td>
				<td class = "board-name">작성자</td>
			</tr>
	<%
		for(int i = 0; i < list.size(); i++){
	%>
			<tr>
				<td class = "board-number"><%=list.get(i).getNum() %></td>
				<td class = "board-sub"><%=list.get(i).getSubject() %></td>
				<td class = "board-name"><%=list.get(i).getName() %></td>
			</tr>
	<%} %>	
			<!-- 실험 
			<tr style="width: 50%">
				<td class = "board-number">asdasd</td>
				<td class = "board-sub" onclick="location.href = 'index.jsp'">asdasdasd</td>
				<td class = "board-name">asdasdasdasdasd</td>
				<td class = "">asdasdasdasdasd</td>
				<td class = "">asdasdasdasdasd</td>
			</tr>
			 -->
		</tbody>

	</table>
	<br>
	<div style = "width: 100%">
		<a class= "a-insert"href="board_insert.jsp">등록</a>
	</div>



	<script src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
	<script type="text/javascript">
	
	
		$(".board-sub").click(function() {
			var str = ""
			var tdArr = new Array(); // 배열 선언

			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();

			// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
			alert("클릭한 Row의 모든 데이터 : " + tr.text());

			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i) {
				tdArr.push(td.eq(i).text());
			});

			// alert("배열에 담긴 값 : " + tdArr);

		});
	</script>



	<%@include file="footer.jsp"%>
</body>
</html>