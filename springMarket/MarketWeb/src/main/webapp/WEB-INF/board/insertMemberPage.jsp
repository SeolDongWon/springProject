<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PageForm</title>
<%@ include file="resources/bootstrap.jsp"%>
<%@ include file="resources/style.jsp"%>
<%@ include file="resources/script.jsp"%>
</head>

<body onload="screanCheck();" onresize="screanCheck();">
	<%@ include file="resources/screenSize.jsp"%>
	<div class="container-md" id="bodyContainer">
		<%@ include file="resources/header.jsp"%>
		<main>
			<%@ include file="resources/aside.jsp"%>
			<section>
				<!-- 콘텐츠 시작 -->
				<article>
				<div class="container">
		<div class="inner">
			<form action="insertMemberCtrl.do" name="joinForm" method="post">
				<table>
					<tr>
						<td><label for="id">아이디</label></td>
						<td style="width: 100px;"><input type="text" name="memberId"
							id="id" onfocus="focusOn(id)" onblur="focusOff(id); idCheck()"></td>
						<td>
							<div class="error" id="idError"></div>
						</td>
					</tr>
					<tr>
						<td><label for="password">비밀번호</label></td>
						<td><input type="password" name="memberPassword" id="password"
							onfocus="focusOn(id)" onblur="focusOff(id);passwordCheck()"></td>
						<td>
							<div class="error" id="passwordError"></div>
						</td>
					</tr>
					<!-- <tr>
						<td><label for="rePassword">비번확인</label></td>
						<td><input type="password" name="rePassword" id="rePassword"
							onfocus="focusOn(id)" onblur="focusOff(id);rePasswordCheck()"></td>
						<td>
							<div class="error" id="rePasswordError"></div>
						</td>
					</tr> -->
					<tr>
						<td><label for="name">이름</label></td>
						<td><input type="text" name="memberName" id="name"
							onfocus="focusOn(id)" onblur="focusOff(id);nameCheck()"></td>
						<td>
							<div class="error" id="nameError"></div>
						</td>
					</tr>
					<!-- <tr>
						<td><label for="birthday">생년월일</label></td>
						<td><input type="date" name="birthday" id="birthday"
							onfocus="focusOn(id)" onblur="focusOff(id);birthdayCheck()"></td>
						<td>
							<div class="error" id="birthdayError"></div>
						</td>
					</tr> -->
					<tr>
						<td><label for="tel">전화번호</label></td>
						<td><input type="number" name="memberTel" id="tel"
							onfocus="focusOn(id)" onblur="focusOff(id);telCheck()"></td>
						<td>
							<div class="error" id="telError"></div>
						</td>
					</tr>
					<tr>
						<td><label>주소</label></td>
						<td colspan="2">
							<input type="text" class="inputAddr"name="memberAddress" id="postcode" size="10px"> 
						</td>
					</tr>
					<!-- <tr>
						<td><label>주소</label></td>
						<td colspan="2"><input type="text" class="inputAddr"
							name="postcode" id="postcode" placeholder="우편번호" size="10px"
							readonly> <input type="text" name="extraAddress"
							id="extraAddress" placeholder="참고항목" size="10px" readonly>
							<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
						</td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2"><input type="text" class="inputAddr"
							name="mainAddress" id="mainAddress" placeholder="주소" size="50px"
							readonly></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2"><input type="text" class="inputAddr"
							name="detailAddress" id="detailAddress" placeholder="상세주소"
							onfocus="focusOn(id)" onblur="focusOff(id);addressCheck()"
							size="50px"></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2">
							<div class="error" id="addressError">&nbsp;</div>
						</td>
					</tr> -->
					<tr>
						<td></td>
						<td><input type="button" value="회원가입" onclick="joinSend()" />
						</td>
						<td><a href="index.jsp"><input
								type="button" value="취소" /></a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
				</article>
				<!-- 콘텐츠 끝-->
			</section>
		</main>
		<%@ include file="resources/footer.jsp"%>
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
		let flag = false;
		let frm = document.joinForm;
		
		 /* let check = [ idDoubleCheck(), passwordCheck(), rePasswordCheck(),
		 nameCheck() ];

		 for (let i = 0; i < check.length; i++) {
		 if (!check[i]) {
		 flag = true;
		 }
		 } */

		if (!flag) {
			if (confirm("입력한 내용이 맞나요")) {
				frm.submit();
			}
		}
	}

/* function focusOn(tagId) {
		document.getElementById(tagId).classList.add('focusBlack');
	}
	function focusOff(tagId) {
		document.getElementById(tagId).classList.remove('focusBlack');
	}

	function idCheck() {
		let id = document.joinForm.id.value;
		let regId = /^[a-z0-9_-]{4,10}$/;
		document.getElementById('id').classList.add('focusRed');
		document.getElementById('idError').style.color = ""
		if (!regId.test(id)) {
			document.getElementById('idError').innerHTML = "*4~10자의 영문 소문자, 숫자 _ - 만 사용 가능합니다.";
			return false;
		} else {
			let options = 'width=100px, height=100px';
			window.open('idDoubleCheck.do?id=' + id, 'idDoubleCheck', options);
			return true;
		}
	}
	
	function idDoubleCheck() {
		if (document.getElementById('idError').innerHTML === '사용 가능') {	
			return true;
		}else{
			document.getElementById('id').classList.add('focusRed');
			document.getElementById('idError').innerHTML = "*4~10자의 영문 소문자, 숫자 _ - 만 사용 가능합니다.";
			return false;
		}
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

        let date = new Date();
        let year = date.getFullYear();
        // 날짜가 1~9면 앞에 0이 사라지는 문제 수정
        let month = date.getMonth() + 1;
        if (month < 10) {
            month = '0' + month;
        }
        // 날짜가 1~9면 앞에 0이 사라지는 문제 수정
        let day = date.getDate();
        if (day < 10) {
            day = '0' + day;
        }
        let maxDay = year + '-' + month + '-' + day;
        let minDay = year - 110 + '-' + month + '-' + day;

        let inputBirthday = document.joinForm.birthday.value;
        if (inputBirthday < minDay || maxDay < inputBirthday) {
            document.getElementById('birthdayError').innerHTML = "*날짜가 정확한지 확인해주세요";
            return false;
        }
        else {
            document.getElementById('birthdayError').innerHTML = "";
            document.getElementById('birthday').classList.remove('focusRed');
            return true;
        }
    }
	
    function telCheck() {
        let inputTel = document.joinForm.tel.value;
        let regTel = /^[0-9]{8,12}$/;
        if (!regTel.test(inputTel)) {
            document.getElementById('telError').innerHTML = "*전화번호가 정확한지 확인해주세요.";
            return false;
        } else {
            document.getElementById('telError').innerHTML = "";
            document.getElementById('tel').classList.remove('focusRed');
            return true;
        }
    }
    
    function addressCheck(){
    		let inputAddrArr = document.getElementsByClassName('inputAddr');
    	  for(let data of inputAddrArr){
    	    if(data.value===''){
    	      document.getElementById('addressError').innerHTML = "*주소가 정확한지 확인해주세요.";
    	      return false;
    	    }
    	  }
    	  document.getElementById('addressError').innerHTML = "&nbsp;";
    	  document.getElementById('detailAddress').classList.remove('focusRed');
    	  return true;
    }
    
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로,이를 참고하여 분기
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { //사용자가 도로명주소를 선택경우
                    if (data.buildingName !== '') {
                        data.buildingName = ' (' + data.buildingName + ')';
                    }
                    addr = data.roadAddress + data.buildingName;
                } else { // 사용자가 지번 주소를 선택했을 경우(J) 
                    addr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    // test() ㅡ 찾는 문자열이, 들어있는지 아닌지를 알려준다.
                    // var reg = /패턴/; var testing = reg.test( string );
                    // g 플래그가 붙으면 패턴과 일치하는 모든 것들을 찾음
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += ((extraAddr !== '') ? (', ' + data.buildingName) : (data.buildingName));
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다. 
                    document.getElementById("extraAddress").value = extraAddr;

                } else {
                    document.getElementById("extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다. 
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("mainAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다. 
                document.getElementById("detailAddress").focus();
            }
        }).open();
    } */
	
</script>

</html>