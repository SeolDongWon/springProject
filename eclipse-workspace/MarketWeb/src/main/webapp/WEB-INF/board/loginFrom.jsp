<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
  <!-- 콘텐츠 시작 -->
	<div align="center">
		<h1>seolMarket로그인</h1>
		<hr>
		<form action="login.do" method="post">
			<table border="1" style="padding: 0px; border-spacing: 0px">
				<tr>
					<td bgcolor="orange">아이디</td>
					<td><input type="text" name="memberId" value="${user.id }"/></td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td><input type="password" name="memberPassword" value="${user.password }" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertMemberForm.jsp">회원가입</a><br>
	</div> 
	<!-- 콘텐츠 끝-->
<%@ include file="include/footer.jsp"%>