/**
 * 도서관련 스크립트
 */
//------------------------------------------------------
// 도서 등록시 점검 항목
//------------------------------------------------------
function checkForm(writeform) {
	if(!writeform.book_kind.value) {
		alert("책의 분류를 선택하십시오.");
		writeform.book_kind.focus();
		return false;
	}
	if(!writeform.book_title.value) {
		alert("책의 제목을 입력하십시오.");
		writeform.book_title.focus();
		return false;
	}
	if(!writeform.book_price.value) {
		alert("책의 가격을 입력하십시오.");
		writeform.book_price.focus();
		return false;
	}
	if(!writeform.book_count.value) {
		alert("책의 수량을 입력하십시오.");
		writeform.book_count.focus();
		return false;
	}
	if(!writeform.author.value) {
		alert("책의 저자를 입력하십시오.");
		writeform.author.focus();
		return false;
	}
	if(!writeform.publishing_com.value) {
		alert("출판사를 입력하십시오.");
		writeform.publishing_com.focus();
		return false;
	}
	if(!writeform.book_content.value) {
		alert("책의 내용을 입력하십시오.");
		writeform.book_content.focus();
		return false;
	}
	if(!writeform.discount_rate.value) {
		alert("책의 할인율을 입력하십시오.");
		writeform.discount_rate.focus();
		return false;
	}
	writeform.action = "bookRegisterPro.jsp";
	writeform.submit();
} // End - function checkForm(writeform)

//------------------------------------------------------
// 책의 정보를 수정할 때 항목들을 검사하는 함수
//------------------------------------------------------
function updateCheckForm(writeform) {
	if(!writeform.book_kind.value) {
		alert("책의 분류를 선택하십시오.");
		writeform.book_kind.focus();
		return false;
	}
	if(!writeform.book_title.value) {
		alert("책의 제목을 입력하십시오.");
		writeform.book_title.focus();
		return false;
	}
	if(!writeform.book_price.value) {
		alert("책의 가격을 입력하십시오.");
		writeform.book_price.focus();
		return false;
	}
	if(!writeform.book_count.value) {
		alert("책의 수량을 입력하십시오.");
		writeform.book_count.focus();
		return false;
	}
	if(!writeform.author.value) {
		alert("책의 저자를 입력하십시오.");
		writeform.author.focus();
		return false;
	}
	if(!writeform.publishing_com.value) {
		alert("출판사를 입력하십시오.");
		writeform.publishing_com.focus();
		return false;
	}
	if(!writeform.book_content.value) {
		alert("책의 내용을 입력하십시오.");
		writeform.book_content.focus();
		return false;
	}
	if(!writeform.discount_rate.value) {
		alert("책의 할인율을 입력하십시오.");
		writeform.discount_rate.focus();
		return false;
	}
	writeform.action = "bookUpdatePro.jsp";
	writeform.submit();
	
} // End - function updateCheckForm(writeform)



















