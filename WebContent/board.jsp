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
			<h3 class="display-5 text-center">�Խñ� ���</h3>
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
				<td class = "board-number">�� ��ȣ</td>
				<td>����</td>
				<td class = "board-name">�ۼ���</td>
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
			<!-- ���� 
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
		<a class= "a-insert"href="board_insert.jsp">���</a>
	</div>



	<script src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
	<script type="text/javascript">
	
	
		$(".board-sub").click(function() {
			var str = ""
			var tdArr = new Array(); // �迭 ����

			// ���� Ŭ���� Row(<tr>)
			var tr = $(this);
			var td = tr.children();

			// tr.text()�� Ŭ���� Row �� tr�� �ִ� ��� ���� �����´�.
			alert("Ŭ���� Row�� ��� ������ : " + tr.text());

			// �ݺ����� �̿��ؼ� �迭�� ���� ��� ����� �� �� �ִ�.
			td.each(function(i) {
				tdArr.push(td.eq(i).text());
			});

			// alert("�迭�� ��� �� : " + tdArr);

		});
	</script>



	<%@include file="footer.jsp"%>
</body>
</html>