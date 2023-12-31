<%@page import="com.mire.biz.board.impl.BoardDAO"%>
<%@page import="com.mire.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    //1 검색할 게시글 번호 추출
        String seq = request.getParameter("seq");

        //2 DB 연동 처리
        BoardVO vo = new BoardVO();
        vo.setSeq(Integer.parseInt(seq));

        BoardDAO boardDAO = new BoardDAO();
        BoardVO board = boardDAO.getBoard(vo);

        //3 응답화면 구성
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
	<a href="logout_proc.jsp">Log-out</a>
	<hr>
	<form action="updateBoard_proc.jsp" method="post">
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
				<td align="left"><textarea name="content" cols="40" rows="10"><%=board.getContent()%></textarea></td>
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
	<a href="insertBoard.jsp">글등록</a>
	<a href="deleteBoard_proc.jsp?seq=<%=board.getSeq()%>">글삭제</a>
	<a href="getBoardList.jsp">글목록</a>
</div>
</body>
</html>