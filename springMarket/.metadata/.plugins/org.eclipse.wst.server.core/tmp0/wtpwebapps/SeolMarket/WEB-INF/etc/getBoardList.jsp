<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html> 
<head> 
<meta charset="UTF-8"> 
<title>글목록</title>
</head>
<body>
	<div align="center">
		<h1>글 목록</h1>
		<h3>
			${user.name}님 환영합니다....<br>
		<a href="logout.do">Log-out</a><br>
		<a href="updateUser.jsp">회원수정</a><br>
		<a href="getUserList.do">회원목록</a><br>
		<a href="deleteUser.jsp">회원탈퇴</a><br>
		</h3>

		<!-- 검색시작 -->
		<form action="getBoardList.do" method="post">
			<table border="1"
				style="padding: 0px; border-spacing: 0px; width: 700px">
				<tr>
					<td align="right">
						<select name="searchCondition">
						<!-- 
							<option value="TITLE">제목</option>
							<option value="CONTENT">내용</option>
						-->
							<c:forEach items="${conditionMap}" var = "data">
								<option value="${data.value}">${data.key}</option>
						</c:forEach>
						</select> 
						<input name="searchKeyword" type="text" /> 
						<input type="submit"value="검색" />
					</td>
				</tr>
			</table>
		</form>
		<!-- 검색종료 -->
		<table border="1"
			style="padding: 0px; border-spacing: 0px; width: 700px">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">조회수</th>
			</tr>

			<c:forEach var="board" items="${boardList }">
				<tr>
					<td>${board.seq}</td>
					<td align="left"><a href="getBoard.do?seq=${board.seq }">${board.title }</a>
					</td>
					<td>${board.writer }</td>
					<td>${board.regDate }</td>
					<td>${board.cnt }</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="insertBoard.jsp">새글 동록</a>
	</div>
</body>
</html>