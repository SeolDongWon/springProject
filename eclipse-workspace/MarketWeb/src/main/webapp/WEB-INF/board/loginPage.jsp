<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PageForm</title>
<%@ include file="layout/link.jsp"%>
</head>

<body onload="screanCheck();" onresize="screanCheck();">
	<%@ include file="layout/screenSize.jsp"%>
	<div class="container-md" id="bodyContainer">
		<%@ include file="layout/header.jsp"%>
		<main>
			<%@ include file="layout/aside.jsp"%>
			<section>
				<!-- 콘텐츠 시작 -->
				<article>
					<div align="center">
						<h1>seolMarket로그인</h1>
						<hr>
						<form action="login.do" method="post">
							<table border="1" style="padding: 0px; border-spacing: 0px">
								<tr>
									<td bgcolor="orange">아이디</td>
									<td><input type="text" name="memberId" value="${user.id }" /></td>
								</tr>
								<tr>
									<td bgcolor="orange">비밀번호</td>
									<td><input type="password" name="memberPassword"
										value="${user.password }" /></td>
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
				</article>
				<!-- 콘텐츠 끝-->
			</section>
		</main>
		<%@ include file="layout/footer.jsp"%>
	</div>
</body>
</html>