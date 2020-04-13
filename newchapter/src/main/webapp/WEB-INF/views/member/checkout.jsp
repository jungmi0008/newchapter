<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="bg-light py-3">
    <div class="container">
        <div class="row">
	            <a href="/">홈</a><span class="mx-2 mb-0">/</span>
	            <strong class="text-black">주문하기</strong>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <!-- <div class="row mb-5">
            <div class="col-md-12">
                <div class="border p-4 rounded" role="alert">
                    Returning customer? <a href="#">Click here</a> to login
                </div>
            </div>
        </div> -->
        <h2 class="h3 mb-3 text-black">주문자 정보</h2>
        <div class="row">
            <div class="col-md-6 mb-5 mb-md-0">
                
                <div class="p-3 p-lg-5">
                    <div class="form-group row">
                        <div class="col-md-6">
                            <label for="c_fname" class="text-black">이름<span
                                    class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="c_fname" name="c_fname">
                        </div>
                    </div>
                    <div class="form-group row">
                    	<div class="col-md-12">
                    		<label class="text-black">배송지<span class="text-danger">*</span></label>
                    	</div>
                    	<div class="col-md-6 col-sm-6">
                    		<input type="text" id="sample6_postcode" class="form-control" style="margin-right: 20px;" placeholder="우편번호">
                    	</div>
                    	<div class="col-md-6 col-sm-6">
                    		<input class="btn btn-primary btn-sm" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                    	</div>
                    </div>
                     <div class="form-group row">
                    	<div class="col-md-12">
                    		<input type="text" class="form-control" id="sample6_address" placeholder="주소">
                    	</div>
                    </div>
                     <div class="form-group row">
                    	<div class="col-md-12">
                    		<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
                    	</div>
                    </div>
                    <div class="form-group row">
                    	<div class="col-md-12">
                    		<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
                    	</div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
	                        <label for="c_phone" class="text-black">연락처 <span class="text-danger">*</span></label>
	                        <div>
		                        <select id="c_country" class="form-control col-md-2 phoneNum">
		                            <option value="010">010</option>
		                            <option value="011">011</option>
		                            <option value="016">016</option>
		                            <option value="017">017</option>
		                            <option value="018">018</option>
		                            <option value="019">019</option>
		                        </select>
		                        <span class="phoneNum dash">-</span><input class="form-control col-md-2 phoneNum" type="text" name="">
		                        <span class="phoneNum dash">-</span><input class="form-control col-md-2 phoneNum" type="text" name="">
	                        </div>
                        </div>
                    </div>
                    

                    <div class="form-group row">
                        <div class="col-md-12">
                            <select id="c_msg" class="form-control">
		                            <option value="msg0">배송시 요청사항(선택사항)</option>
		                            <option value="msg1">부재시 경비실에 맡겨주세요.</option>
		                            <option value="msg2">배송전 연락바랍니다.</option>
		                            <option value="msg3">부재시 전화 또는 문자주세요.</option>
		                            <option value="msg4">직접입력</option>
		                    </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
                            <input type="hidden" name="msg" maxlength="50">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">

                <!-- <div class="row mb-5">
                    <div class="col-md-12">
                        <h2 class="h3 mb-3 text-black">Coupon Code</h2>
                        <div class="p-3 p-lg-5 border">

                            <label for="c_code" class="text-black mb-3">Enter your coupon code if you have one</label>
                            <div class="input-group w-75">
                                <input type="text" class="form-control" id="c_code" placeholder="Coupon Code"
                                    aria-label="Coupon Code" aria-describedby="button-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary btn-sm" type="button"
                                        id="button-addon2">Apply</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
 -->
                <div class="row mb-5">
                    <div class="col-md-12">
                        <div class="p-3 p-lg-5">
                            <table class="table site-block-order-table mb-5">
                                <thead>
                                    <th>상품정보</th>
                                    <th>금액</th>
                                </thead>
                                <tbody>
                                    <c:forEach var="book" items="${bookListForCheckout}">
                                    <tr>
                                        <td><c:out value="${book.p_title}"/><strong class="mx-2">x</strong><span class="bookCntInput"><c:out value="${book.cart_count}"/></span></td>
                                        <c:set value="${book.p_price*(1-book.p_dc_rate*0.01)}" var="dc_price_1" />
										<fmt:formatNumber value="${dc_price_1}" type="number" pattern="0" var="dc_price_2" />
									    <fmt:formatNumber value="${dc_price_2}" type="currency" var="final_price" />
                                        <td class="discounted_price" style="display:none;">
                                        	<c:out value="${dc_price_2}"/>
                                        </td>
                                        <td class="final_price"></td>
                                  	  </tr>
                                    </c:forEach>
                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>배송비</strong></td>
                                        <td class="text-black">2,500원</td>
                                    </tr>
                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>결제금액</strong></td>
                                        <td class="text-black font-weight-bold"><strong id="final_total_price"></strong></td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="border p-3 mb-3">
                                <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsebank"
                                        role="button" aria-expanded="false" aria-controls="collapsebank">신용/체크카드 결제</a></h3>

                                <div class="collapse" id="collapsebank">
                                    <div class="py-2">
                                        <p class="mb-0">Make your payment directly into our bank account. Please use
                                            your Order ID as the payment reference. Your order won’t be shipped until
                                            the funds have cleared in our account.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="border p-3 mb-3">
                                <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsecheque"
                                        role="button" aria-expanded="false" aria-controls="collapsecheque">현금 결제</a></h3>

                                <div class="collapse" id="collapsecheque">
                                    <div class="py-2">
                                        <p class="mb-0">Make your payment directly into our bank account. Please use
                                            your Order ID as the payment reference. Your order won’t be shipped until
                                            the funds have cleared in our account.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="border p-3 mb-5">
                                <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsepaypal"
                                        role="button" aria-expanded="false" aria-controls="collapsepaypal">휴대폰 결제</a>
                                </h3>

                                <div class="collapse" id="collapsepaypal">
                                    <div class="py-2">
                                        <p class="mb-0">Make your payment directly into our bank account. Please use
                                            your Order ID as the payment reference. Your order won’t be shipped until
                                            the funds have cleared in our account.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <button class="btn btn-primary btn-lg py-3 btn-block"
                                    onclick="window.location='thankyou.html'">결제하기</button>
                            </div>

                        </div>
                    </div>
                </div>
	
            </div>
        </div>
        <!-- </form> -->
    </div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
$(document).ready(function() {
	showFinalPrice();
	
	function showFinalPrice() {
		var cntArr 		= document.getElementsByClassName("bookCntInput");
		var priceArr 	= document.getElementsByClassName("discounted_price");
		
		var finalArr 	= document.getElementsByClassName("final_price");
		
		var totalP = 0;
		
		for(var i = 0; i < cntArr.length; i++){
			var cnt		= cntArr[i].innerHTML.trim();
			var price 	= priceArr[i].innerHTML.trim();
			var finalP 	= cnt * price;/* 각 제품의 최종가격(할인가 * 개수) */
			
			var regexp = /\B(?=(\d{3})+(?!\d))/g;/* 1000자리 표시 */
			var finalStr = finalP.toString().replace(regexp, ',');
			
			finalArr[i].innerHTML = finalStr+"원";
			
			totalP += finalP;
		}
		
		var final_totalP = totalP + 2500;
		var final_total_price = document.getElementById("final_total_price");
		final_total_price.innerHTML = final_totalP.toString().replace(regexp, ',')+"원";
	}
});
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>