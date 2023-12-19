<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:if test="${deleteUserFlag==1 }">
	<script>
		alert("탈퇴성공");
	</script>
</c:if>
<c:if test="${deleteUserFlag==-1 }">
	<script>
		alert("탈 퇴 실 패");
	</script>
</c:if>
<c:set var="deleteUserFlag" value="0" scope="session"></c:set>
<c:if test="${updateUserFlag==1 }">
	<script>
		alert("수정성공");
	</script>
</c:if>
<c:if test="${updateUserFlag==-1 }">
	<script>
		alert("수 정 실 패");
	</script>
</c:if>
<c:set var="updateUserFlag" value="0" scope="session"></c:set>
<c:if test="${insertUserFlag==1 }">
	<script>
		alert("가입성공");
	</script>
</c:if>
<c:if test="${insertUserFlag==-1 }">
	<script>
		alert("가 입 실 패");
	</script>
</c:if>
<c:set var="insertUserFlag" value="0" scope="session"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div align="center">
		<h1>로그인MVC2</h1>
		<hr>
		<form action="login.do" method="post">
			<table border="1" style="padding: 0px; border-spacing: 0px">
				<tr>
					<td bgcolor="orange">아이디</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertUser.jsp">회원가입</a><br>
	</div> 
</body>
</html>