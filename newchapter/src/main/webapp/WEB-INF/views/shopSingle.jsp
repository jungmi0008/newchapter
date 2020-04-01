<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="include/header.jsp"></jsp:include>
<div class="bg-light py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-12 mb-0"><a href="/">홈</a> <span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a> <span
					class="mx-2 mb-0">/</span> <strong class="text-black">소설</strong></div>
		</div>
	</div>
</div>

<div class="site-section">
	<div class="container">
		<div class="row">
			<c:set var="book" value="${bookSingle}" />
			<div class="col-md-6">
				<img src="${book.p_img }" alt="Image" class="img-fluid">
			</div>
			<div class="col-md-6">
				<h2 class="text-black">${book.p_title}</h2>
				<p class="mb-4">${book.p_introduction }</p>
				<p style="color: #8c92a0;">${book.p_author} | ${book.p_publish_company} | ${book.p_publish_date}</p>
				<p class="font_weight">
					<span>
						<fmt:formatNumber value="${book.p_price}" type="currency" var="price" />
						<c:out value="${price}" />
					</span>
					<span class="icon-arrow_forward font_weight"></span>
					<span class="font_price_red">
						<c:set value="${book.p_price*(1-book.p_dc_rate*0.01)}" var="dc_price_1" />
						<fmt:formatNumber value="${dc_price_1}" type="number" pattern="0" var="dc_price_2" />
						<fmt:formatNumber value="${dc_price_2}" type="currency" var="final_price" />
						판매가 :<c:out value="${final_price}" />
					</span>
					<span>
						[<c:out value="${book.p_dc_rate}"/>% 할인]
					</span>
				</p>
				<br>
				<div class="mb-5">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
						</div>
						<form id="goCartForm" action="/cart" method="post">
							<input name="cart_count" type="text" class="form-control text-center" value="1" placeholder=""
								aria-label="Example text with button addon" aria-describedby="button-addon1" style="width:70px">
							<input type="hidden" name="pno" value="${book.pno}">
							<sec:authentication property='principal' var='pinfo'/>
							<sec:authorize access="isAuthenticated()">
								<input type="hidden" name="m_id" value='${pinfo.username}'>
							</sec:authorize>
							<sec:authorize access="isAnonymous()">
								<input type="hidden" name="m_id" value='anonymous'>
							</sec:authorize>
						</form>
						<div class="input-group-append">
							<button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
						</div>
					</div>
				</div>
					<p><a class="buy-now btn btn-sm btn-primary" id="goCartBtn">장바구니에 담기</a></p>
			</div>
		</div>
	</div>

</div>


<div class="site-section">
	<!-- 상품관련 nav -->
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<div class="col-md-12 mb-0">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="#">상세설명</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">상품평</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">상품문의</a>
				</li>
			</ul>
		</div>
	</nav><!-- nav end -->

	<div class="container">
		<div class="row">
			<div class="col-md-11">
				<!-- start of pt-5 상세설명-->
				<!-- <div class="pt-5">
            <h3 class="mb-5">상세설명</h3>
            <b>나를 행복하게 하는 것이 ‘최고의 선택’이다! 점심 메뉴부터 일생일대의 선택까지 제대로 결정하는 힘.</b>
            <p>
              ‘오늘은 어떤 옷을 입을까? 점심은 뭘 먹을까? 상사에게는 언제 보고하고 몇 시에 회의를 할까?’ 
              우리는 날마다 선택의 순간을 맞닥뜨린다. 일상의 작은 선택뿐만이 아니다. 
              인생의 커다란 갈림길인 진학, 취직, 이직, 퇴직, 결혼, 출산, 이혼, 재혼, 이사, 심지어 임종까지 선택해야 한다. 
              때로는 단 한 번의 선택으로 인생이 크게 달라지기도 한다.
              예를 들어 취직이나 결혼 같은 인생의 굵직한 사건들은 이후의 인생에 커다란 영향을 끼치는 선택이다.
              셰익스피어의 말처럼 인생은 선택의 연속이다. 크고 작은 선택의 결과들이 쌓여 우리의 인생을 만든다. 
              그러나 선택하고 결정하는 데 서툴러 늘 우물쭈물 우왕좌왕 고민하는 사람들이 너무나 많다. 
              혹시 당신은 친구나 동료가 “뭐 먹고 싶어?”라고 물었을 때 “아무거나”라고 대답하지는 않는가? 혹은 아침마다 어떤 옷을 입을지 못 정해서 회사에 지각하지는 않는가?
              《결정을 못해서 고민입니다》는 이처럼 결정에 어려움을 겪는 사람들을 위해 속 시원한 해결책을 제안한다. 
              책에서 제시하는 ‘정서적 선택력’과 ‘논리적 선택력’을 활용하면 일상의 자잘한 선택부터 일생일대의 선택에 이르기까지 쉽고 현명하게 선택할 수 있을 것이다.
            </p>
          </div> -->
				<!-- end of pt-5 상세설명-->

				<!-- start of 상품평-->
				<!-- <div class="pt-5">
            <h3 class="mb-5">상품평&nbsp;<span>400</span></h3>
            <ul class="comment-list">
              <li class="comment">
                <div class="vcard bio">
                  <img src="images/person_2.jpg" alt="Image">
                </div>
                <div class="comment-body">
                  <h3>jcob1111</h3>
                  <div class="meta">January 9, 2018 at 2:21pm</div>
                  <p>내용이 아주 좋아요! 잘 받아 봤습니다.</p>
                </div>
              </li>
              <li class="comment">
                <div class="vcard bio">
                  <img src="images/person_3.jpg" alt="Image">
                </div>
                <div class="comment-body">
                  <h3>Chris2222r</h3>
                  <div class="meta">January 9, 2018 at 2:21pm</div>
                  <p>아주 좋네요</p>
                </div>
              </li>
              <li class="comment">
                <div class="vcard bio">
                  <img src="images/person_1.jpg" alt="Image">
                </div>
                <div class="comment-body">
                  <h3>Jean3333</h3>
                  <div class="meta">January 9, 2018 at 2:21pm</div>
                  <p>강추합니다</p>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-md-12 text-center">
            <div class="site-block-27" style="margin: 30px 0;">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>end of 상품평 -->
				<div class="pt-5">
					<h3 class="mb-5">상품문의&nbsp;<span>17</span>
						<button class="btn btn-sm btn-primary" style="float: right;">문의하기</button></h3>
					<div class="table-responsive">
						<table class="table table-bordered" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>번호</th>
									<th>답변상태</th>
									<th>제목</th>
									<th>문의자</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
									</td>
									<td>
										<a class="move" href=""></a>
									</td>
									<td>
									</td>
									<td>
									</td>
									<td>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-12 text-center">
						<div class="site-block-27" style="margin: 30px 0;">
							<ul>
								<li><a href="#">&lt;</a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&gt;</a></li>
							</ul>
						</div>
					</div><!-- end of 상품평-->
				</div><!-- end of row -->
			</div>
		</div>
		<!-- END comment-list -->
		<div class="site-section block-3 site-blocks-2 bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-7 site-section-heading text-center pt-4">
						<h2>Featured Products</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="nonloop-block-3 owl-carousel">
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src="" alt="Image placeholder" class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3><a href="#">Tank Top</a></h3>
										<p class="mb-0">Finding perfect t-shirt</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src="" alt="Image placeholder" class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3><a href="#">Corater</a></h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src="" alt="Image placeholder" class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3><a href="#">Polo Shirt</a></h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src="" alt="Image placeholder" class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3><a href="#">T-Shirt Mockup</a></h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src="" alt="Image placeholder" class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3><a href="#">Corater</a></h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="include/footer.jsp"></jsp:include>