<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html> 
<head> 
<meta charset="UTF-8"> 
<title><spring:message code="message.board.list.mainTitle"/></title>
</head>
<body>
	<div align="center">
		<h1><spring:message code="message.board.list.mainTitle"/></h1>
		<h3>
			${user.name}<spring:message code="message.board.list.welcomeMsg"/><br>
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
						
							<option value="TITLE"><spring:message code="message.board.list.search.condition.title"/></option>
							<option value="CONTENT"><spring:message code="message.board.list.search.condition.content"/></option>
						
						<%-- 	<c:forEach items="${conditionMap}" var = "data">
								<option value="${data.value}">${data.key}</option>
						</c:forEach> --%>
						</select> 
						<input name="searchKeyword" type="text" /> 
						<input type="submit"value="<spring:message code="message.board.list.search.condition.btn"/>" />
					</td>
				</tr>
			</table>
		</form>
		<!-- 검색종료 -->
		<table border="1"
			style="padding: 0px; border-spacing: 0px; width: 700px">
			<tr>
				<th bgcolor="orange" width="100"><spring:message code="message.board.list.table.head.seq"/></th>
				<th bgcolor="orange" width="200"><spring:message code="message.board.list.table.head.title"/></th>
				<th bgcolor="orange" width="150"><spring:message code="message.board.list.table.head.writer"/></th>
				<th bgcolor="orange" width="150"><spring:message code="message.board.list.table.head.regDate"/></th>
				<th bgcolor="orange" width="100"><spring:message code="message.board.list.table.head.cnt"/></th>
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
		<br> <a href="insertBoard.jsp"><spring:message code="message.board.list.link.insertBoard"/></a>
	</div>
</body>
</html>