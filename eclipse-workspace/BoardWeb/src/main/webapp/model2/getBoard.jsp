<%@page import="com.mire.biz.board.impl.BoardDAO"%>
<%@page import="com.mire.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
BoardVO board = (BoardVO)session.getAttribute("board");
%>
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
	<form action="updateBoard.do" method="post">
		<input name="seq" type="hidden" value="<%=board.getSeq()%>"/>
		<table border="1" style="padding: 0px;border-spacing: 0px">
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input name="title" type="text" value="<%=board.getTitle()%>"/></td>
			</tr>
			<tr>
				<td bgcolor="orange">작성자</td>
				<td align="left"><%=board.getWriter()%></td>
			</tr>
				<tr>
				<td bgcolor="orange">내용</td>
				<td align="left"><textarea name="content" rows="10" cols="40">
				<%=board.getContent()%></textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange">등록일</td>
				<td align="left"><%=board.getRegDate()%></td>
			</tr>
			<tr>
				<td bgcolor="orange">조회수</td>
				<td align="left"><%=board.getCnt()%></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글수정"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.do">글등록</a>
	<a href="deleteBoard.do?seq=<%=board.getSeq()%>">글삭제</a>
	<a href="getBoardList.do">글목록</a>
</div>
</body>
</html>