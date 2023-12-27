<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<!-- main 시작 -->
 <main class="p-0 m-0">
    <section>
      <article>
        <div class="container-md">
          <form action="userInsert.do" name="joinForm" method="post" class="needs-validation p-5" novalidate="">
            <div class="row g-3">
              <div class="col-sm-6">
                <label for="id" class="form-label">아이디</label>
                <span class="error" id="idError">asdasdas</span>
                <input type="text" name="id" class="form-control" id="id" placeholder="id"onfocus="focusOn(id)" onblur="focusOff(id); idCheck()">
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-sm-6">
                <label for="name" class="form-label">이름</label>
                <span class="error" id="nameError"></span>
                <div class="input-group has-validation">
                  <input type="text" name="name"class="form-control" id="name" placeholder="name"  onfocus="focusOn(id)" onblur="focusOff(id);nameCheck()">
                <div class="invalid-feedback">
                    Your name is required.
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <label for="password" class="form-label">비밀번호</label>
                <span class="error" id="passwordError"></span>
                <input type="password" name="password" class="form-control" id="password" placeholder="password" onfocus="focusOn(id)"
								onblur="focusOff(id);passwordCheck()">
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
              <!-- <div class="col-sm-6">
                <label for="rePassword" class="form-label">비밀번호 재입력</label>
                <span class="error" id="rePasswordError"></span>
                <input type="password" class="form-control" id="rePassword" placeholder="rePassword">
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div> -->
              <div class="col-12">
                <label for="tel" class="form-label">연락처</label>
                <span class="error" id="telError"></span>
                <input type="tel"  name="tel"class="form-control" id="tel" placeholder="00000000000" onfocus="focusOn(id)" onblur="focusOff(id);telCheck()">
                <div class="invalid-feedback">
                  Please enter a valid email address for shipping updates.
                </div>
              </div>
              <div class="col-12">
                <label for="address" class="form-label">주소</label>
                <span class="error" id="addressError"></span>
                <input type="text" name="address" class="form-control" id="address" placeholder="address" required="">
                <div class="invalid-feedback">
                  Please enter your shipping address.
                </div>
              </div>
            <button class="w-100 btn btn-primary btn-lg" onclick="joinSend()" >회원가입</button>
          </form>
        </div>
      </article>
    </section>
  </main>
<!-- main 끝-->
<%@ include file="pageInclude/PageBottom.jsp"%>

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
