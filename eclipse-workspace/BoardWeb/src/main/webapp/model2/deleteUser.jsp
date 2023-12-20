<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원탈퇴</title>

</head> 

<body>
	<div class="container">
		<div class="inner">
			<form action="deleteUserController.do" name="joinForm" method="post">
				<table>
					<tr>
						<td><label for="id">아이디</label></td>
						<td style="width: 100px;"><input type="text" name="id"
							id="id" value="${user.id }" readonly></td>
						<td>
							<div class="error" id="idError"></div>
						</td>
					</tr>
					<tr>
						<td><label for="password">비밀번호</label></td>
						<td><input type="password" name="password" id="password"></td>
						<td>
							<div class="error" id="passwordError"></div>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="button" value="탈퇴" onclick="joinSend()" />
						</td>
						<td><a href="index.jsp"><input type="button" value="취소" /></a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
<style>
table {
	margin: auto;
}

.focusBlack {
	box-shadow: 0px 0px 10px 1px black;
}

.focusRed {
	box-shadow: 0px 0px 10px 0px red;
	border-color: red;
}

label {
	font-weight: bold;
}

input, select {
	margin: 5px;
	padding: 5px;
}

.error {
	font-size: 12px;
	color: red;
	width: 200px;
}
</style>
<script>
	function joinSend() {
		let frm = document.joinForm;
		if (confirm("정말 탈퇴하나요")) {
			frm.submit();
		}
	}
</script>

</html>