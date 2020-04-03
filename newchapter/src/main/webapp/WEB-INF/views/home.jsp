<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="include/header.jsp"></jsp:include>

<!-- 홈 화면 메인 이미지 -->	
<div class="site-blocks-cover" style="background-color: #BDBAEE;" data-aos="fade">
    <div class="container">
        <div class="row align-items-start align-items-md-center justify-content-end">
            <div class="col-md-7" id="site-img-div">
                <img id="main-img" src="http://image.kyobobook.co.kr/images/book/large/277/l9791164050277.jpg">
            </div>
            <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
                <h1 class="mb-2">테드 창의 신작 '숨'</h1>
                <div class="intro-text text-center text-md-left">
                    <p class="mb-4">SF계의 거장 테드 창, 17년만에 그가 돌아왔다.</p>
                    <p>
                        <a href="/shopping/shop" class="btn btn-sm btn-primary">책 보러가기</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 사이트 홍보 -->
<div class="site-section site-section-sm site-blocks-1">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
                <div class="icon mr-4 align-self-start">
                    <span class="icon-truck"></span>
                </div>
                <div class="text">
                    <h2 class="text-uppercase">무료배송</h2>
                    <p>신규가입 회원에 한해 무료배송쿠폰 2500원을 지원해드립니다</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
                <div class="icon mr-4 align-self-start">
                    <span class="icon-refresh2"></span>
                </div>
                <div class="text">
                    <h2 class="text-uppercase">철저한 환불정책</h2>
                    <p>구매하신 제품에 대해 불만족스러운 경우 100% 환불보장해드립니다</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
                <div class="icon mr-4 align-self-start">
                    <span class="icon-help"></span>
                </div>
                <div class="text">
                    <h2 class="text-uppercase">고객지원서비스</h2>
                    <p>24시간 고객센터를 운영하여 언제나 고객의 소리에 귀기울이고 있습니다</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 추천상품  -->
<div class="site-section site-blocks-2">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade" data-aos-delay="">
                <a class="block-2-item" href="shopping/shopSingle">
                    <figure class="image">
                        <img src="../../resources/images/l9788937473135.jpg" alt="" class="img-fluid img-zoom-in">
                    </figure>
                    <div class="text">
                        <span class="text-uppercase">많이 판매된 도서</span>
                        <h3>판매 순위 TOP 10</h3>
                    </div>
                </a>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-4 mb-3 mb-lg-0" data-aos="fade" data-aos-delay="100">
                <a class="block-2-item" href="shopping/shopSingle">
                    <figure class="image">
                        <img src="http://image.kyobobook.co.kr/images/book/large/050/l9788937460050.jpg
" alt="" class="img-fluid img-zoom-in">
                    </figure>
                    <div class="text">
                        <span class="text-uppercase">프로그래밍도 뉴챕터에서</span>
                        <h3>네트워크 도서</h3>
                    </div>
                </a>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                <a class="block-2-item" href="shopping/shopSingle">
                    <figure class="image">
                        <img src="../../resources/images/l9788937473135.jpg" alt="" class="img-fluid img-zoom-in">
                    </figure>
                    <div class="text">
                        <span class="text-uppercase">최애 작가의 책</span>
                        <h3>작가 한강의 책</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- 최신 등록 책 보기  -->
<div class="site-section block-3 site-blocks-2 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7 site-section-heading text-center pt-4">
                <h2>최신 등록 책보기</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="nonloop-block-3 owl-carousel">
                	<c:forEach var="book" items="${newBookList}">
	                    <div class="item">
	                        <div class="block-4 text-center">
	                            <figure class="block-4-image">
	                                <a href="/shopSingle?pno=<c:out value="${book.pno}"/>"><img src="<c:out value='${book.p_img}'/>" alt="<c:out value='${book.pno}'/>" class="img-fluid"></a>
	                            </figure>
	                            <div class="block-4-text p-4">
	                                <div class="font_title_div"><a href="/shopSingle/pno=<c:out value='${book.pno}'/>">${book.p_title}</a></div>
	                                <p class="font_weight">${book.p_author}</p>
	                                <p class="font_weight">
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
	                                </p>
	                                
	                                <p class="font_price_red"><c:out value="${book.p_dc_rate}"/>% 할인</p>
	                            </div>
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 이벤트 소개 -->
<!-- <div class="site-section block-8">
    <div class="container">
        <div class="row justify-content-center  mb-5">
            <div class="col-md-7 site-section-heading text-center pt-4">
                <h2>이벤트</h2>
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col-md-12 col-lg-7 mb-5">
                <a href=""><img src="" alt="Image placeholder" class="img-fluid rounded"></a>
            </div>
            <div class="col-md-12 col-lg-5 text-center pl-md-5">
                <h2><a href="#">신규회원가입시 배송비 무료!</a></h2>
                <p>회원가입 하고 2500원 배송비 할인 받자!</p>
                <p><a href="#" class="btn btn-primary btn-sm">회원가입 하러가기</a></p>
            </div>
        </div>
    </div>
</div> -->

<jsp:include page="include/footer.jsp"></jsp:include>