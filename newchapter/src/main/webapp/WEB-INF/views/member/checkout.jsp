<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="row">
            <div class="col-md-6 mb-5 mb-md-0">
                <h2 class="h3 mb-3 text-black">주문결제</h2>
                <div class="p-3 p-lg-5 border">
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
                    	<div class="col-md-6">
                    		<input type="text" id="sample6_postcode" class="form-control" style="margin-right: 20px;" placeholder="우편번호">
                    	</div>
                    	<div class="col-md-6">
                    		<a class="btn btn-primary btn-sm" style="color: white;" href="javacript:sample6_execDaumPostcode()">주소찾기</a>
                    	</div>
                    </div>
                     <div class="form-group row">
                    	<div class="col-md-12">
                    		<input type="text" class="form-control" id="sample6_address" placeholder="주소">
                    	</div>
                    </div>
                     <div class="form-group row">
                    	<div class="col-md-6">
                    		<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
                    	</div>
                    	<div class="col-md-6">
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

                    <!-- <div class="form-group row">
                        <div class="col-md-12">
                            <label for="c_address" class="text-black">Address <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="c_address" name="c_address"
                                placeholder="Street address">
                        </div>
                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                    </div> -->


                    <!-- <div class="form-group">
                        <label for="c_create_account" class="text-black" data-toggle="collapse"
                            href="#create_an_account" role="button" aria-expanded="false"
                            aria-controls="create_an_account"><input type="checkbox" value="1" id="c_create_account">
                            Create an account?</label>
                        <div class="collapse" id="create_an_account">
                            <div class="py-2">
                                <p class="mb-3">Create an account by entering the information below. If you are a
                                    returning customer please login at the top of the page.</p>
                                <div class="form-group">
                                    <label for="c_account_password" class="text-black">Account Password</label>
                                    <input type="email" class="form-control" id="c_account_password"
                                        name="c_account_password" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div> -->


                    <!-- <div class="form-group">
                        <label for="c_ship_different_address" class="text-black" data-toggle="collapse"
                            href="#ship_different_address" role="button" aria-expanded="false"
                            aria-controls="ship_different_address"><input type="checkbox" value="1"
                                id="c_ship_different_address"> Ship To A Different Address?</label>
                        <div class="collapse" id="ship_different_address">
                            <div class="py-2">

                                <div class="form-group">
                                    <label for="c_diff_country" class="text-black">Country <span
                                            class="text-danger">*</span></label>
                                    <select id="c_diff_country" class="form-control">
                                        <option value="1">Select a country</option>
                                        <option value="2">bangladesh</option>
                                        <option value="3">Algeria</option>
                                        <option value="4">Afghanistan</option>
                                        <option value="5">Ghana</option>
                                        <option value="6">Albania</option>
                                        <option value="7">Bahrain</option>
                                        <option value="8">Colombia</option>
                                        <option value="9">Dominican Republic</option>
                                    </select>
                                </div>


                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="c_diff_fname" class="text-black">First Name <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_fname" name="c_diff_fname">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="c_diff_lname" class="text-black">Last Name <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_lname" name="c_diff_lname">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_diff_companyname" class="text-black">Company Name </label>
                                        <input type="text" class="form-control" id="c_diff_companyname"
                                            name="c_diff_companyname">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_diff_address" class="text-black">Address <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_address"
                                            name="c_diff_address" placeholder="Street address">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control"
                                        placeholder="Apartment, suite, unit etc. (optional)">
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="c_diff_state_country" class="text-black">State / Country <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_state_country"
                                            name="c_diff_state_country">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="c_diff_postal_zip" class="text-black">Posta / Zip <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_postal_zip"
                                            name="c_diff_postal_zip">
                                    </div>
                                </div>

                                <div class="form-group row mb-5">
                                    <div class="col-md-6">
                                        <label for="c_diff_email_address" class="text-black">Email Address <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_email_address"
                                            name="c_diff_email_address">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="c_diff_phone" class="text-black">Phone <span
                                                class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_diff_phone" name="c_diff_phone"
                                            placeholder="Phone Number">
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div> -->

                    <!-- <div class="form-group">
                        <label for="c_order_notes" class="text-black">Order Notes</label>
                        <textarea name="c_order_notes" id="c_order_notes" cols="30" rows="5" class="form-control"
                            placeholder="Write your notes here..."></textarea>
                    </div> -->

                </div>
            </div>
            <div class="col-md-6">

                <div class="row mb-5">
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

                <div class="row mb-5">
                    <div class="col-md-12">
                        <h2 class="h3 mb-3 text-black">Your Order</h2>
                        <div class="p-3 p-lg-5 border">
                            <table class="table site-block-order-table mb-5">
                                <thead>
                                    <th>Product</th>
                                    <th>Total</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Top Up T-Shirt <strong class="mx-2">x</strong> 1</td>
                                        <td>$250.00</td>
                                    </tr>
                                    <tr>
                                        <td>Polo Shirt <strong class="mx-2">x</strong> 1</td>
                                        <td>$100.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
                                        <td class="text-black">$350.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-black font-weight-bold"><strong>Order Total</strong></td>
                                        <td class="text-black font-weight-bold"><strong>$350.00</strong></td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="border p-3 mb-3">
                                <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsebank"
                                        role="button" aria-expanded="false" aria-controls="collapsebank">Direct Bank
                                        Transfer</a></h3>

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
                                        role="button" aria-expanded="false" aria-controls="collapsecheque">Cheque
                                        Payment</a></h3>

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
                                        role="button" aria-expanded="false" aria-controls="collapsepaypal">Paypal</a>
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
                                    onclick="window.location='thankyou.html'">Place Order</button>
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