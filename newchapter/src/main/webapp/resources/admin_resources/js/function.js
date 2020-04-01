//----------------------------------------------------------------
// 아이디 중복 확인
//----------------------------------------------------------------
function confirmId()
{
	if(document.memInsForm.id.value == "") {
		alert("아이디를 입력하십시오.");
		return;
	}
	
	url = "confirmId.jsp?id=" + document.memInsForm.id.value;
	
	window.open(url, "confirm", "toolbar=no, location=no, \
			status=no, menubar=no, scrollbars=no, \
			resizable=no, width=500, height=200");
} // End - function confirmId()

//----------------------------------------------------------------
// 숫자 검사
//----------------------------------------------------------------
function isNumberCheck(inputVal)
{
	var var_normalize = /[^0-9]/gi;	//정규식
	if(var_normalize.test(inputVal) == true) return false;
	else return true;
}

//----------------------------------------------------------------
//최상위 체크 로직(chars로 넘긴 값이 있다면 false)
//----------------------------------------------------------------
function containsChars(input, chars)
{
	for(var inx = 0; inx < input.length; inx++) {
		if(chars.indexOf(input.charAt(inx)) != -1)
			return true;
	}
	return false;
}
//----------------------------------------------------------------
//최상위 체크 로직(chars로 넘긴 값이 있다면 false)
//----------------------------------------------------------------
function containsCharsOnly(input, chars)
{
	for(var inx = 0; inx < input.length; inx++) {
		if(chars.indexOf(input.charAt(inx)) == -1) 
			return false;
	}
	return true;
}
//----------------------------------------------------------------
// 숫자 체크
//----------------------------------------------------------------
function isNum(input) {
	var chars = "0123456789";
	return containsCharsOnly(input, chars);
}
//----------------------------------------------------------------
// 영숫자 체크
//----------------------------------------------------------------
function isAlphaNumCheck(input) {
	var chars = "abcdefghijklmnopqrstuvwxyzABCEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	return containsCharsOnly(input, chars);
}
//----------------------------------------------------------------
// 이름 체크
//----------------------------------------------------------------
function isNameCheck(input) {
	var chars = "0123456789~!@#$%^&*()_-+=|{}[],./?";
	return containsCharsOnly(input, chars);
}
//----------------------------------------------------------------
// 회원등록 검사
//----------------------------------------------------------------
function memberInsertCheckForm(memInsForm)
{
	//어떤 것들을 검사하여야 할까? 생각해봅시다.
	if(!memInsForm.id.value) {
		alert("고객 id를 입력하십시오.");
		document.memInsForm.id.focus();
		return;
	}
	if(isAlphaNumCheck(memInsForm.id.value) == false) {
		alert("고객 id는 숫자와 영문자만 사용 가능합니다.");
		document.memInsForm.id.focus();
		return;
	}
	if( (memInsForm.id.value.length < 8) || (memInsForm.id.value.length > 10) ) {
		alert("\n고객 id는 8자리에서 10자리 사이를 입력하셔야 합니다.");
		memInsForm.id.focus();
		return false;
	}
	
	if(!memInsForm.passwd.value) {
		alert("비밀번호를 입력하십시오.");
		document.memInsForm.passwd.focus();
		return;
	}
	if(isAlphaNumCheck(memInsForm.passwd.value) == false) {
		alert("비밀번호는 숫자와 영문자만 사용 가능합니다.");
		document.memInsForm.passwd.focus();
		return;
	}
	if( (memInsForm.passwd.value.length < 8) || (memInsForm.passwd.value.length > 10) ) {
		alert("\n비밀번호는 8자리에서 10자리 사이를 입력하셔야 합니다.");
		memInsForm.passwd.focus();
		return false;
	}

	if(!memInsForm.repasswd.value) {
		alert("비밀번호확인을 입력하십시오.");
		document.memInsForm.repasswd.focus();
		return;
	}
	if(isAlphaNumCheck(memInsForm.repasswd.value) == false) {
		alert("비밀번호확인은 숫자와 영문자만 사용 가능합니다.");
		document.memInsForm.repasswd.focus();
		return;
	}
	if( (memInsForm.repasswd.value.length < 8) || (memInsForm.repasswd.value.length > 10) ) {
		alert("\n비밀번호확인은 8자리에서 10자리 사이를 입력하셔야 합니다.");
		memInsForm.repasswd.focus();
		return false;
	}
	
	if( (memInsForm.passwd.value) != (memInsForm.repasswd.value) ) {
		alert("비밀번호와 비밀번호확인이 틀립니다.\n다시 입력하십시오.");
		memInsForm.passwd.focus();
		return false;
	}

	if(!memInsForm.name.value) {
		alert("이름을 입력하십시오.");
		memInsForm.name.focus();
		return false;
	}
	if(isNameCheck(memInsForm.name.value) == true) {
		alert("이름에는 숫자나 특수문자를 입력할 수 없습니다.");
		document.memInsForm.name.focus();
		return false;
	}
	
	if(!memInsForm.address.value) {
		alert("주소를 입력하십시오.");
		memInsForm.address.focus();
		return false;
	}
	
	if(!memInsForm.tel1.value) {
		alert("전화번호를 입력하십시오.");
		memInsForm.tel1.focus();
		return false;
	}
	if(!memInsForm.tel2.value) {
		alert("전화번호 2번째 자리를 입력하십시오.");
		memInsForm.tel2.focus();
		return false;
	}
	if(!isNumberCheck(memInsForm.tel3.value)) {
		alert("전화번호 3번째 자리는 숫자만 입력이 가능합니다.");
		memInsForm.tel3.focus();
		return false;
	}
	if(memInsForm.tel3.value.length < 4) {
		alert("전화번호 3번째 자리는 4자를 입력하셔야 합니다.");
		memInsForm.tel3.focus();
		return false;
	}
	if(!isNumberCheck(memInsForm.tel3.value)) {
		alert("전화번호 3번째 자리는 숫자만 입력이 가능합니다.");
		memInsForm.tel3.focus();
		return false;
	}
	
	if(memInsForm.registerYn[0].checked == false) {
		alert("회원가입을 하시려면 회원가입에 동의해주셔야 합니다.");
		memInsForm.registerYn.focus();
		return false;
	}
	
	if(memInsForm.is_subscribed.checked == false) {
		alert("개인정보수집 및 이용에 동의해주셔야 회원가입을 할 수 있습니다.");
		memInsForm.is_subscribed.focus();
		return false;
	}
	memInsForm.action = "memberInsertPro.jsp";
	memInsForm.submit();
	//writeform.action = "bookRegisterPro.jsp";
	//writeform.submit();
	
} // End - function memberInsertCheckForm(memInsForm)


































