<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="../include/header.jsp"></jsp:include>
<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<a href="home.jsp">홈</a><span class="mx-2 mb-0">/</span>
			<strong class="text-black">장바구니</strong>
		</div>
	</div>
</div>

<div class="site-section">
	<div class="container">
		<div class="row mb-5">
			<form name=cartForm" class="col-md-12" method="post">
				<div class="site-blocks-table">
					<table class="table">
						<thead>
							<tr>
								<th class="product-name" colspan="2">상품</th>
								<th class="product-price">가격</th>
								<th class="product-quantity">수량</th>
								<th class="product-total">금액</th>
								<th class="product-remove">삭제하기</th>
							</tr>
						</thead>
						<tbody>
						<sec:authentication property='principal' var='pinfo' />
						<sec:authorize access="isAuthenticated()">
							<input type="hidden" name="m_id" value='${pinfo.username}' id="m_idInput">
						</sec:authorize>
							<c:choose>
								<c:when test="${!empty bookListForCart}">
									<c:forEach var="book" items="${bookListForCart}">
										<tr class="oneTr">
											<td class="product-thumbnail">
												<a href="/shopSingle?pno=<c:out value="${book.pno}" />"><img
													src="${book.p_img}" alt="${book.p_img}" class="img-fluid"></a>
											</td>
											<td class="product-name">
												<p class="text-black">${book.p_title}</p>
												<p style="color:#8c92a0;">${book.p_author} | ${book.p_publish_company} | ${book.p_publish_date}
												</p>
											</td>
											<td>
												<span class="original_price_span">
													<fmt:formatNumber value="${book.p_price}" type="currency"
														var="price" />
													<c:out value="${price}" />
												</span>
												<span class="icon-arrow_forward font_weight"></span>
													<c:set  value="${book.p_price*(1-book.p_dc_rate*0.01)}"
															var="dc_price_1" />
													<fmt:formatNumber value="${dc_price_1}" type="number" pattern="0"
														var="dc_price_2" />
													<fmt:formatNumber value="${dc_price_2}" type="currency"
														var="final_price" />
													<p class="discounted_price" style="display:none;"><c:out value="${dc_price_2}"/></p>
												<span class="font_price_red">	
													<c:out value="${final_price}" />
												</span>
												<br>
												<span>
													[
													<c:out value="${book.p_dc_rate}" />% 할인]
												</span>
											</td>
											<td>
												<div class="input-group mb-3" style="max-width: 120px;">
													
													<input type="hidden" name="pno" value="${book.pno}">
													
													<div class="input-group-prepend">
														<button class="btn btn-outline-primary js-btn-minus minusBtn"
															type="button">&minus;</button>
													</div>
													<input type="text" class="form-control text-center bookCntInput"
															value="${book.cart_count}" placeholder=""
															aria-label="Example text with button addon"
															aria-describedby="button-addon1" style="padding:0;"
															name="bookCnt">
													<div class="input-group-append">
														<button class="btn btn-outline-primary js-btn-plus plusBtn"
																type="button">&plus;</button>
													</div>
												</div>

											</td>
											
											<td class="final_price"></td>
											
											<td><button class="btn deleteBtn" style="background-color: white">X</button></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="6">
											<h3 class="text-black h4 text-uppercase">장바구니가 비어있습니다.</h3>
										</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</form>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="row mb-5">
					<div class="col-md-6">
						<button class="btn btn-outline-primary btn-sm btn-block"
							onclick="location.href='/shop'">쇼핑계속하기</button>
					</div>
				</div>
			</div>
			<div class="col-md-6 pl-5">
				<div class="row justify-content-end">
					<div class="col-md-7">
						<div class="row">
							<div class="col-md-12 text-right border-bottom mb-5">
								<p class="text-black h5 text-uppercase">주문전체금액</p>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-md-6">
								<span class="text-black">상품금액</span>
							</div>
							<div class="col-md-6 text-right">
								<strong class="text-black" id="total_price"></strong>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-md-6">
								<span class="text-black">배송비</span>
							</div>
							<div class="col-md-6 text-right">
								<strong class="text-black">2,500원</strong>
							</div>
						</div>
						<hr>
						<div class="row mb-5">
							<div class="col-md-6">
								<span class="text-black">전체주문금액</span>
							</div>
							<div class="col-md-6 text-right">
								<strong class="text-black" id="final_total_price"></strong>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<a class="btn btn-primary btn-lg py-3 btn-block"
									href='/member/checkout'>주문하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
$(document).ready(function () {
	/* shop.jsp (장바구니) */
	/* 각 제품의 최종가격과 전체 결제 금액 */
	showFinalPrice();
	
	function showFinalPrice() {
		var cntArr 		= document.getElementsByClassName("bookCntInput");
		var priceArr 	= document.getElementsByClassName("discounted_price");
		
		var finalArr 	= document.getElementsByClassName("final_price");
		
		var totalP = 0;
		
		for(var i = 0; i < cntArr.length; i++){
			var cnt		= cntArr[i].value;
			var price 	= priceArr[i].innerHTML.trim();
			var finalP 	= cnt * price;/* 각 제품의 최종가격(할인가 * 개수) */
			
			var regexp = /\B(?=(\d{3})+(?!\d))/g;/* 1000자리 표시 */
			var finalStr = finalP.toString().replace(regexp, ',');
			
			finalArr[i].innerHTML = finalStr+"원";
			
			totalP += finalP;
		}
		
		var total_price = document.getElementById("total_price");
		
		total_price.innerHTML = totalP.toString().replace(regexp, ',')+"원";
		
		final_totalP = totalP + 2500;
		var final_total_price = document.getElementById("final_total_price");
		final_total_price.innerHTML = final_totalP.toString().replace(regexp, ',')+"원";
	}
	
	$(document).ajaxSend(function(e, xhr, options) { 
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
	});
	
	/* cart.jsp  */
	/* 장바구니에 상품 개수 변경 */
	$(".minusBtn").on("click", function(e) {
		var cnt = $(this).parent().next().val();
		var pno = $(this).parent().parent().find("input[name='pno']").val();
		var m_id = $("#m_idInput").val();
		
		if(cnt == 0) {
			alert("주문 가능 수량은 최소 1개입니다.");
			$(this).parent().next().val(1);
			return false;
		}
		
		var cart = {
				cart_count : cnt,
				pno : pno,
				m_id : m_id
		};
		
		cartService.updateBookCnt(cart, function(result) {
			console.log(result);
			showFinalPrice();
		});
	});
	
	$(".plusBtn").on("click", function(e) {
		var cnt = $(this).parent().prev().val();
		var pno = $(this).parent().parent().find("input[name='pno']").val();
		var m_id = $("#m_idInput").val();
		
		
		var cart = {
				cart_count : cnt,
				pno : pno,
				m_id : m_id
		};
		
		cartService.updateBookCnt(cart, function(result) {
			console.log(result);
			showFinalPrice();
		}); 
	});
	
	$(".bookCntInput").on("blur", function() {
		var cnt	 = $(this).val();
		var pno  = $(this).parent().find("input[name='pno']").val();
		var m_id = $("#m_idInput").val();
		
		if(cnt == 0) {
			alert("주문 가능 수량은 최소 1개입니다.");
			$(this).val(1);
			return false;
		}
		
		var cart = {
				cart_count : cnt,
				pno : pno,
				m_id : m_id
		};
		
		cartService.updateBookCnt(cart, function(result) {
			console.log(result);
			showFinalPrice();
		});
	}) ;
	
	/* 장바구니 제품 삭제 */
	$(".deleteBtn").on("click", function(e) {
		e.preventDefault();
		var pno = $(this).parent().prev().prev().find("input[name='pno']").val();
		var m_id = $("#m_idInput").val();
		
		var cart = {
				pno : pno,
				m_id : m_id
		};
		
		cartService.deleteBook(cart, function(result) {
			console.log(result);
			window.location.reload();
		});
	});
	
    var csrfHeaderName ="${_csrf.headerName}"; 
    var csrfTokenValue="${_csrf.token}";
});
</script>