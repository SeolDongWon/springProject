<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글등록</title>
</head>
<body>
	<div align="center">
		<h1>글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertBoard.do" method="post" name="insertBoardForm" enctype="multipart/form-data">
			<table border="1" style="padding: 0px; border-spacing: 0px">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left"><input type="text" name="title" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left"><input type="text" name="writer" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left"><textarea name="content" rows="10" cols="40"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="70">파일업로드</td>
					<td align="left"><input type="file" name="uploadFile" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button"
						value="새글 등록" onclick="insertBoardCheck()" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getBoardList.do">글 목록 가기</a>
	</div>
</body>
<script type="text/javascript">
	function insertBoardCheck() {
		var frm = document.insertBoardForm;

		if (frm.title.value == "" || frm.writer.value == ""|| frm.content.value == "") {
			alert("빈칸있어요");
		} else {
			frm.submit();
		}
	}
</script>
</html>