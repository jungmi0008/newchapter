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
			<div class="col-md-6 shopSingleImg">
				<img src="${book.p_img }" alt="Image" class="img-fluid">
			</div>
			<div class="col-md-6">
				<h2 class="text-black">${book.p_title}</h2>
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
						판매가 :
						<c:out value="${final_price}" />
					</span>
					<span>
						[
						<c:out value="${book.p_dc_rate}" />% 할인]
					</span>
				</p>
				<br>
				<div class="mb-5">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
						</div>
						<form id="goCartForm" action="/cart" method="post">
							<input name="cart_count" type="text" class="form-control text-center" value="1"
								placeholder="" aria-label="Example text with button addon"
								aria-describedby="button-addon1" style="width:70px">
							<input type="hidden" name="pno" value="${book.pno}">
							<sec:authentication property='principal' var='pinfo' />
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
					<a class="nav-link active" href="#">상세설명</a>
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
				<div class="pt-5 shopSingleSection" id="detail">
					<h3 class="mb-5">상세설명</h3>
					<p>
						${book.p_introduction }
					</p>
				</div>
				<!-- end of pt-5 상세설명-->

				<!-- start of 상품평-->
				<div class="pt-5 shopSingleSection" id="comment">
					<h3 class="mb-5">상품평&nbsp;<span>400</span></h3>
					<ul class="comment-list">
						<li class="comment">
							<div class="vcard bio">
								<img src="" alt="Image">
							</div>
							<div class="comment-body">
								<h3>jcob1111</h3>
								<div class="meta">January 9, 2018 at 2:21pm</div>
								<p>내용이 아주 좋아요! 잘 받아 봤습니다.</p>
							</div>
						</li>
						<li class="comment">
							<div class="vcard bio">
								<img src="" alt="Image">
							</div>
							<div class="comment-body">
								<h3>Chris2222r</h3>
								<div class="meta">January 9, 2018 at 2:21pm</div>
								<p>아주 좋네요</p>
							</div>
						</li>
						<li class="comment">
							<div class="vcard bio">
								<img src="" alt="Image">
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
				</div>

				<div class="pt-5 shopSingleSection" id="question">
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
					</div>
				</div>
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