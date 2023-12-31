<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보수정</title>

</head>

<body> 
	<div class="container">
		<div class="inner">
			<form action="updateUserController.do" name="joinForm" method="post">
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
						<td><input type="password" name="password" id="password"
							onfocus="focusOn(id)" onblur="focusOff(id);passwordCheck()"></td>
						<td>
							<div class="error" id="passwordError"></div>
						</td>
					</tr>
					<tr>
						<td><label for="rePassword">비번확인</label></td>
						<td><input type="password" name="rePassword" id="rePassword"
							onfocus="focusOn(id)" onblur="focusOff(id);rePasswordCheck()"></td>
						<td>
							<div class="error" id="rePasswordError"></div>
						</td>
					</tr>
					<tr>
						<td><label for="name">name</label></td>
						<td><input type="text" name="name" id="name"  value="${user.name }" 
							onfocus="focusOn(id)" onblur="focusOff(id);nameCheck()"></td>
						<td>
							<div class="error" id="nameError"></div>
						</td>
					</tr>
					<tr>
						<td><label for="role">role</label></td>
						<td><select name="role" value="${user.role }" >
						<c:if test="${user.role =='User' }">
								<option value="Admin">Admin</option>						
								<option value="User" selected="selected" >User</option>
						</c:if>
						<c:if test="${user.role =='Admin' }">
								<option value="Admin" selected="selected" >Admin</option>
								<option value="User" >User</option>
						</c:if>
						</select></td>
						<td>
							<div class="error" id="birthdayError"></div>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="button" value="정보수정" onclick="joinSend()" />
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
		let flag = false;
		let check = [ passwordCheck(), rePasswordCheck(),	nameCheck() ];

		for (let i = 0; i < check.length; i++) {
			if (!check[i]) {
				flag = true;
			}
		}

		if (!flag) {
			if (confirm("입력한 내용이 맞나요")) {
				frm.submit();
			}
		}
	}

	function focusOn(tagId) {
		document.getElementById(tagId).classList.add('focusBlack');
	}
	function focusOff(tagId) {
		document.getElementById(tagId).classList.remove('focusBlack');
	}

	function passwordCheck() {
		let inputPassword = document.joinForm.password.value;
		let regPassword = /^[a-z0-9A-Z\W]{5,12}$/;
		if (!regPassword.test(inputPassword)) {
			document.getElementById('password').classList.add('focusRed');
			document.getElementById('passwordError').innerHTML = "*5~12자의 영문 대/소문자, 숫자, 특수문자를 사용해주세요.";
			return false;
		} else {
			document.getElementById('passwordError').innerHTML = "";
			document.getElementById('password').classList.remove('focusRed');
			return true;
		}
	}

	function rePasswordCheck() {
		let inputPassword = document.joinForm.password.value;
		let inputRePassword = document.joinForm.rePassword.value;
		if (inputPassword !== inputRePassword) {
			document.getElementById('rePassword').classList.add('focusRed');
			document.getElementById('rePasswordError').innerHTML = "*입력한 비밀번호가 다릅니다";
			return false;
		} else {
			document.getElementById('rePasswordError').innerHTML = "";
			document.getElementById('rePassword').classList.remove('focusRed');
			return true;
		}
	}

	function nameCheck() {
		let inputName = document.joinForm.name.value;
		let regName = /^[가-힣a-zA-Z]{1,}$/;
		if (!regName.test(inputName)) {
			document.getElementById('name').classList.add('focusRed');
			document.getElementById('nameError').innerHTML = "*한글, 영문을 사용해주세요. (숫자, 특수기호,공백 사용 불가)";
			return false;
		} else {
			document.getElementById('nameError').innerHTML = "";
			document.getElementById('name').classList.remove('focusRed');
			return true;
		}
	}

	function birthdayCheck() {

	}
</script>

</html>