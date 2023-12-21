<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세</title>
</head>
<body>
<div align="center">
	<h1>글상세</h1>
	<a href="logout.do">Log-out</a>
	<hr>
	<form action="updateBoard.do" method="post" name="updateBoardForm">
		<input name="seq" type="hidden" value="${board.seq}"/>
		<table border="1" style="padding: 0px;border-spacing: 0px">
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input name="title" type="text" value="${board.title}"/></td>
			</tr>
			<tr>
				<td bgcolor="orange">작성자</td>
				<td align="left">${board.writer}</td>
			</tr>
				<tr>
				<td bgcolor="orange">내용</td>
				<td align="left"><textarea name="content" rows="10" cols="40">${board.content}</textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange">등록일</td>
				<td align="left">${board.regDate}</td>
			</tr>
			<tr>
				<td bgcolor="orange">조회수</td>
				<td align="left">${board.cnt}</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="글수정" onclick="updateBoardCheck()"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.jsp">글등록</a>
	<a href="deleteBoard.do?seq=${board.seq}">글삭제</a>
	<a href="getBoardList.do">글목록</a>
</div>
</body>
<script type="text/javascript">
	function updateBoardCheck() {
		var frm = document.updateBoardForm;

		if (frm.title.value == "" || frm.content.value == "") {
			alert("빈칸있어요");
		} else {
			frm.submit();
		}
	}
</script>
</html>