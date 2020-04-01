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
            	<a href="myPage.jsp">마이페이지</a><span class="mx-2 mb-0">/</span>
            	<strong class="text-black">장바구니</strong>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row mb-5">
            <form class="col-md-12" method="post">
                <div class="site-blocks-table">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="product-thumbnail">상품</th>
                                <th class="product-name">상품명</th>
                                <th class="product-price">가격</th>
                                <th class="product-quantity">수량</th>
                                <th class="product-total">금액</th>
                                <th class="product-remove">상품삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:choose>
	                        	<c:when test="${!empty bookListForCart}">
									<c:forEach var="book" items="${bookListForCart}">	                            
			                            <tr>
			                              	<td class="product-thumbnail">
			                                    <a href="/shopSingle?pno=<c:out value="${book.pno}"/>"><img src="${book.p_img}" alt="${book.p_img}" class="img-fluid"></a>
			                                </td>
			                                <td class="product-name">
			                                    <h2 class="h5 text-black">${book.p_title}</h2>
			                                    <p>${book.p_author} | ${book.p_publish_company} | ${book.p_publish_date}</p>
			                                </td>
			                                <td>
			                                <span>
			                                	<fmt:formatNumber value="${book.p_price}" type="currency" var="price"/>
			                                	<c:out value="${price}"/>
				                                </span>
				                                <span class="icon-arrow_forward font_weight"></span>
				                                <span class="font_price_red">
				                                <c:set value="${book.p_price*(1-book.p_dc_rate*0.01)}" var="dc_price_1"/>
				                                <fmt:formatNumber value="${dc_price_1}" type="number" pattern="0" var="dc_price_2"/>
				                                <fmt:formatNumber value="${dc_price_2}" type="currency" var="final_price"/>
				                                <c:out value="${final_price}"/>
				                                </span>
				                                <br>
				                                <span>
													[<c:out value="${book.p_dc_rate}"/>% 할인]
												</span>
			                                </td>
			                                <td>
			                                    <div class="input-group mb-3" style="max-width: 120px;">
			                                        <div class="input-group-prepend">
			                                            <button class="btn btn-outline-primary js-btn-minus"
			                                                type="button">&minus;</button>
			                                        </div>
			                                        <form>
			                                        	<input type="text" class="form-control text-center" value="${book.cart_count}" placeholder=""
				                                            aria-label="Example text with button addon"
				                                            aria-describedby="button-addon1"
				                                            style="padding:0;"
				                                            name="bookCnt">
				                                        <sec:authentication property='principal' var='pinfo'/>
														<sec:authorize access="isAuthenticated()">
															<input type="hidden" name="m_id" value='${pinfo.username}'>
														</sec:authorize>
				                                        <input type="hidden" name="pno" value="${book.pno}">
				                                        <div class="input-group-append">
				                                            <button class="btn btn-outline-primary js-btn-plus"
				                                                type="button">&plus;</button>
				                                        </div>
				                                        <div style="padding:15px;">
				                                            <button class="btn btn-primary btn-sm"
				                                                type="button" onclick="javascript:changeCnt(this.form)">수정</button>
				                                        </div>
			                                        </form>
			                                    </div>
												
			                                </td>
			                                <c:set var="cart_count" value="${book.cart_count}" />
			                                <c:set value="${book.p_price*(1-book.p_dc_rate*0.01)}" var="dc_price_1"/>
				                                <fmt:formatNumber value="${dc_price_1}" type="number" pattern="0" var="dc_price_2"/>
			                                <c:set var="total1" value="${dc_price_1 * cart_count }" />
			                                	<fmt:formatNumber value="${total1}" type="number" pattern="0" var="total2"/>
				                                <fmt:formatNumber value="${total2}" type="currency" var="final_total"/>
			                                <td class="final_total">${final_total}</td>
			                                <td><a href="#" class="btn btn-primary btn-sm">X</a></td>
			                            </tr>
		                            </c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="6"><h3 class="text-black h4 text-uppercase">장바구니가 비어있습니다.</h3></td>
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
                        <button class="btn btn-outline-primary btn-sm btn-block">쇼핑계속하기</button>
                    </div>
                </div>
                <!-- <div class="row">
              <div class="col-md-12">
                <label class="text-black h4" for="coupon">쿠폰</label>
                <p>쿠폰은 1개만 적용가능합니다.</p>
              </div>
              <div class="col-md-8 mb-3 mb-md-0">
                <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
              </div>
              <div class="col-md-4">
                <button class="btn btn-primary btn-sm">쿠폰목록 보기</button>
              </div>
            </div> -->
            </div>
            <div class="col-md-6 pl-5">
                <div class="row justify-content-end">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12 text-right border-bottom mb-5">
                                <h3 class="text-black h4 text-uppercase">주문전체금액</h3>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <span class="text-black">상품금액</span>
                            </div>
                            <div class="col-md-6 text-right">
                                <strong class="text-black">13,500원</strong>
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
                                <strong class="text-black">15,500원</strong>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <button class="btn btn-primary btn-lg py-3 btn-block"
                                    onclick="window.location='checkout.html'">주문하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>