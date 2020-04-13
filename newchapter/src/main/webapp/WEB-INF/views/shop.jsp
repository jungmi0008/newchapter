<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<jsp:include page="include/header.jsp"></jsp:include>
<div class="bg-light py-3">
    <div class="container">
        <div class="row">
        	<p style="display: none;" id="bookTypeP">${pageMaker.cri.bookType}</p>
        	<p style="display: none;" id="orderTypeP">${pageMaker.cri.orderType}</p>
            <div class="col-md-12 mb-0" id="categoryDiv">
	            <a href="/">홈</a>
	            <span class="mx-2 mb-0">/</span><strong class="text-black">국내도서</strong>
            </div>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-9 order-2">
                <div class="row">
                    <div class="col-md-12 mb-5">
                        <div class="float-md-left mb-4">
                            <h2 class="text-black h5" id="title">전체보기
                            	<span class="text-black ml-auto">
                            		(<c:out value="${total}"/>)
                            	</span>
                            </h2>
                        </div>
                        <div class="d-flex">
                            <div class="dropdown mr-1 ml-md-auto">
                                <button type="button" class="btn btn-secondary btn-sm dropdown-toggle"
                                    id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">정렬하기</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                    <a class="dropdown-item orderType" href="orderType1">최신순</a>
                                    <a class="dropdown-item orderType" href="orderType2">판매순</a>
                                    <a class="dropdown-item orderType" href="orderType3">리뷰순</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-5">
                	<c:forEach var="book" items="${bookList}">
	                    <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
	                        <div class="block-4 text-center border">
	                            <figure class="block-4-image">
	                                <a class="move" href="<c:out value="${book.pno}"/>"><img src="${book.p_img }" alt="Image placeholder"
	                                        class="img-fluid"></a>
	                            </figure>
	                            <div class="block-4-text p-4">
	                                <div class="font_title_div2"><a href="/shopSingle/pno=<c:out value="${book.pno }"/>">${book.p_title}</a></div>
	                                <p class="font_weight authorInfo">${book.p_author}</p>
	                                <p class="font_weight">
		                                <span class="original_price_span">
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
                <div class="row" data-aos="fade-up">
                    <div class="col-md-12 text-center">
                        <div class="site-block-27">
                            <ul>
                            	<c:if test="${pageMaker.prev}">
                                	<li><a class="page_link" href="${pageMaker.startPage-1}">&lt;</a></li>
                                </c:if>
                                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                                	<li class="${pageMaker.cri.pageNum == num ?'active':''}"><a class="page_link" href="${num}">${num}</a></li>
                                </c:forEach>
                                <c:if test="${pageMaker.next}">
                                	<li><a class="page_link" href="${pageMaker.endPage +1}">&gt;</a></li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
                <form id="actionForm" action="/shop" method="get">
						<input type="hidden" name="pageNum"	value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount"  value="${pageMaker.cri.amount}">
						<input type="hidden" name="bookType"  	value="<c:out value='${pageMaker.cri.bookType}'/>"/>
						<input type="hidden" name="orderType"  	value="<c:out value='${pageMaker.cri.orderType}'/>"/>
						<%-- <input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>"/> --%>
				</form>
                
            </div>

            <div class="col-md-3 order-1 mb-5 mb-md-0">
            	<div class="border p-4 rounded mb-4">
                    <h3 class="mb-3 h6 text-uppercase text-black d-block">국내도서</h3>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-1">
                        	<a href="/shop" class="d-flex"><span>전체보기</span></a>
                        </li>
                        <li class="mb-1">
	                        <a href="#novel" class="d-flex dropdown" data-toggle="collapse">
	                        	<span class="sidebar-span">소설</span><i class="fa fa-angle-down"></i>
	                        </a>
	                        <div class="collapse" id="novel">
						      <a class="dropdown-item bookType" href="allNovel">소설전체</a>
						      <a class="dropdown-item bookType" href="no-001">한국소설</a>
						      <a class="dropdown-item bookType" href="no-002">영미소설</a>
						      <a class="dropdown-item bookType" href="no-003">일본소설</a>
						      <a class="dropdown-item bookType" href="no-004">러시아소설</a>
						      <a class="dropdown-item bookType" href="no-005">프랑스소설</a>
						      <a class="dropdown-item bookType" href="no-006">독일소설</a>
						    </div>
                        </li>
                        <li class="mb-1">
	                        <a href="#essay" class="d-flex dropdown" data-toggle="collapse">
	                        	<span class="sidebar-span">시<span class="dot"><span class="dot">·</span></span>에세이</span><i class="fa fa-angle-down"></i>
	                        </a>
	                         <div class="collapse" id="essay">
							      <a class="dropdown-item bookType" href="allEssay">시<span class="dot"><span class="dot">·</span></span>에세이 전체</a>
							      <a class="dropdown-item bookType" href="es-001">한국시</a>
							      <a class="dropdown-item bookType" href="es-002">해외시</a>
							      <a class="dropdown-item bookType" href="es-003">테마에세이</a>
							      <a class="dropdown-item bookType" href="es-004">나라별 에세이</a>
							      <a class="dropdown-item bookType" href="es-005">인물<span class="dot"><span class="dot">·</span></span>자전적 에세이</a>
							      <a class="dropdown-item bookType" href="es-006">청소년 시<span class="dot"><span class="dot">·</span></span>에세이</a>
							      <a class="dropdown-item bookType" href="es-007">시<span class="dot"><span class="dot">·</span></span>에세이 문고</a>
						      </div>
                        </li>
                        <li class="mb-1">
                        	<a href="#economy" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">경제<span class="dot"><span class="dot">·</span></span>경영</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="economy">
							      <a class="dropdown-item bookType" href="allEconomy">경제/경영 전체</a>
							      <a class="dropdown-item bookType" href="ec-001">경영일반</a>
							      <a class="dropdown-item bookType" href="ec-002">경영이론</a>
							      <a class="dropdown-item bookType" href="ec-003">경영관리</a>
							      <a class="dropdown-item bookType" href="ec-004">경영전략</a>
							      <a class="dropdown-item bookType" href="ec-005">경제일반</a>
							      <a class="dropdown-item bookType" href="ec-006">경제이론</a>
							      <a class="dropdown-item bookType" href="ec-007">경제실무</a>
							      <a class="dropdown-item bookType" href="ec-008">각국경제</a>
							      <a class="dropdown-item bookType" href="ec-009">세무<span class="dot"><span class="dot">·</span></span>회계</a>
							      <a class="dropdown-item bookType" href="ec-010">마케팅<span class="dot"><span class="dot">·</span></span>광고<span class="dot"><span class="dot">·</span></span>고객</a>
							      <a class="dropdown-item bookType" href="ec-011">유통<span class="dot"><span class="dot">·</span></span>창업</a>
							      <a class="dropdown-item bookType" href="ec-012">제테크<span class="dot"><span class="dot">·</span></span>금융</a>
							      <a class="dropdown-item bookType" href="ec-013">무역<span class="dot"><span class="dot">·</span></span>운송</a>
							      <a class="dropdown-item bookType" href="ec-014">관광<span class="dot"><span class="dot">·</span></span>호텔</a>
							      <a class="dropdown-item bookType" href="ec-015">경제<span class="dot"><span class="dot">·</span></span>경영문고</a>
							      <a class="dropdown-item bookType" href="ec-016">대학교재</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#selfDev" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">자기계발</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="selfDev">
							      <a class="dropdown-item bookType" href="allSelfDev">자기계발 전체</a>
							      <a class="dropdown-item bookType" href="se-001">성공<span class="dot"><span class="dot">·</span></span>처세</a>
							      <a class="dropdown-item bookType" href="se-002">자기능력계발</a>
							      <a class="dropdown-item bookType" href="se-003">비지니스능력계발</a>
							      <a class="dropdown-item bookType" href="se-004">인간관계</a>
							      <a class="dropdown-item bookType" href="se-005">화술<span class="dot"><span class="dot">·</span></span>협상</a>
							      <a class="dropdown-item bookType" href="se-006">청소년자기계발</a>
							      <a class="dropdown-item bookType" href="se-007">오디오북</a>
							      <a class="dropdown-item bookType" href="se-008">전자책단말기</a>
						    </div>
                        </li>
                        <hr>
                        <li class="mb-1">
                        	<a href="#libral" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">인문</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="libral">
							      <a class="dropdown-item bookType" href="allLibral">인문 전체</a>
							      <a class="dropdown-item bookType" href="li-001">인문학일반</a>
							      <a class="dropdown-item bookType" href="li-002">심리학</a>
							      <a class="dropdown-item bookType" href="li-003">교육학</a>
							      <a class="dropdown-item bookType" href="li-004">유아교육</a>
							      <a class="dropdown-item bookType" href="li-005">특수교육</a>
							      <a class="dropdown-item bookType" href="li-006">임용고시</a>
							      <a class="dropdown-item bookType" href="li-007">철학</a>
							      <a class="dropdown-item bookType" href="li-008">문학이론</a>
							      <a class="dropdown-item bookType" href="li-009">한국문학론</a>
							      <a class="dropdown-item bookType" href="li-010">영미문학론</a>
							      <a class="dropdown-item bookType" href="li-011">중국문학론</a>
							      <a class="dropdown-item bookType" href="li-012">세계문학론</a>
							      <a class="dropdown-item bookType" href="li-013">언어학</a>
							      <a class="dropdown-item bookType" href="li-014">독서/글쓰기</a>
							      <a class="dropdown-item bookType" href="li-015">문헌정보학</a>
							      <a class="dropdown-item bookType" href="li-016">역학/사주</a>
							      <a class="dropdown-item bookType" href="li-017">대학교재</a>
							      <a class="dropdown-item bookType" href="li-018">방송통신대교재</a>
							      <a class="dropdown-item bookType" href="li-019">인문교양총서</a>
							      <a class="dropdown-item bookType" href="li-020">인문고전총서</a>
							      
							</div>
                       	</li>
                        <li class="mb-1">
                        	<a href="#history" class="d-flex dropdown" data-toggle="collapse"">
                        		<span class="sidebar-span">역사<span class="dot"><span class="dot">·</span></span>문화</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="history">
							      <a class="dropdown-item bookType" href="allHistory">역사<span class="dot"><span class="dot">·</span></span>문화 전체</a>
							      <a class="dropdown-item bookType" href="hi-001">영사일반</a>
							      <a class="dropdown-item bookType" href="hi-002">세계사</a>
							      <a class="dropdown-item bookType" href="hi-003">서양사</a>
							      <a class="dropdown-item bookType" href="hi-004">동양사</a>
							      <a class="dropdown-item bookType" href="hi-005">한국사</a>
							      <a class="dropdown-item bookType" href="hi-006">신화</a>
							      <a class="dropdown-item bookType" href="hi-007">민속학</a>
							      <a class="dropdown-item bookType" href="hi-008">문화일반</a>
							      <a class="dropdown-item bookType" href="hi-009">문화사</a>
							      <a class="dropdown-item bookType" href="hi-010">역사인물</a>
							      <a class="dropdown-item bookType" href="hi-011">역사기행</a>
							      <a class="dropdown-item bookType" href="hi-012">청소년 역사</a>
							      <a class="dropdown-item bookType" href="hi-013">지리학</a>
							      <a class="dropdown-item bookType" href="hi-014">대학교재</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#religion" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">종교</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="religion">
								<a class="dropdown-item bookType" href="allReligion">종교 전체</a>
								<a class="dropdown-item bookType" href="re-001">종교일반</a>
							    <a class="dropdown-item bookType" href="re-002">기독교(개신교)</a>
							    <a class="dropdown-item bookType" href="re-003">가톨릭</a>
							    <a class="dropdown-item bookType" href="re-004">불교</a>
							    <a class="dropdown-item bookType" href="re-005">그외종교</a>
							    <a class="dropdown-item bookType" href="re-006">CD<span class="dot"><span class="dot">·</span></span>TAPE<span class="dot"><span class="dot">·</span></span>악보</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#politics" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">정치<span class="dot"><span class="dot">·</span></span>사회</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="politics">
							      <a class="dropdown-item bookType" href="allPolitics">정치<span class="dot"><span class="dot">·</span></span>사회 전체</a>
							      <a class="dropdown-item bookType" href="po-001">정치<span class="dot"><span class="dot">·</span></span>외교</a>
							      <a class="dropdown-item bookType" href="po-002">행정<span class="dot"><span class="dot">·</span></span>정책</a>
							      <a class="dropdown-item bookType" href="po-003">국방<span class="dot"><span class="dot">·</span></span>군사</a>
							      <a class="dropdown-item bookType" href="po-004">법학</a>
							      <a class="dropdown-item bookType" href="po-005">사회학</a>
							      <a class="dropdown-item bookType" href="po-006">사회문제<span class="dot"><span class="dot">·</span></span>복지</a>
							      <a class="dropdown-item bookType" href="po-007">언론<span class="dot"><span class="dot">·</span></span>신문<span class="dot"><span class="dot">·</span></span>방송</a>
							      <a class="dropdown-item bookType" href="po-008">정치<span class="dot"><span class="dot">·</span></span>사회문고</a>
							      <a class="dropdown-item bookType" href="po-009">대학교재</a>
							      <a class="dropdown-item bookType" href="po-010">정부간행물</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#art" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">예술<span class="dot"><span class="dot">·</span></span>대중문화</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="art">
							      <a class="dropdown-item bookType" href="#allArt">예술<span class="dot"><span class="dot">·</span></span>대중문화 전체</a>
							      <a class="dropdown-item bookType" href="#ar-001">예술일반</a>
							      <a class="dropdown-item bookType" href="#ar-002">미술</a>
							      <a class="dropdown-item bookType" href="#ar-003">만화<span class="dot"><span class="dot">·</span></span>애니메이션</a>
							      <a class="dropdown-item bookType" href="#ar-004">디자인<span class="dot"><span class="dot">·</span></span>색채</a>
							      <a class="dropdown-item bookType" href="#ar-005">패션<span class="dot"><span class="dot">·</span></span>의류</a>
							      <a class="dropdown-item bookType" href="#ar-006">음악</a>
							      <a class="dropdown-item bookType" href="#ar-007">사진<span class="dot"><span class="dot">·</span></span>영상</a>
							      <a class="dropdown-item bookType" href="#ar-008">연극</a>
							      <a class="dropdown-item bookType" href="#ar-009">영화</a>
							      <a class="dropdown-item bookType" href="#ar-010">예술기행</a>
							      <a class="dropdown-item bookType" href="#ar-011">예술문고</a>
							      <a class="dropdown-item bookType" href="#ar-012">청소년예술</a>
							      <a class="dropdown-item bookType" href="#ar-013">대학교재</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#science" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">과학</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="science">
							      <a class="dropdown-item bookType" href="allScience">과학 전체</a>
							      <a class="dropdown-item bookType" href="sc-001">도감</a>
							      <a class="dropdown-item bookType" href="sc-002">교양과학</a>
							      <a class="dropdown-item bookType" href="sc-003">수학</a>
							      <a class="dropdown-item bookType" href="sc-004">물리학</a>
							      <a class="dropdown-item bookType" href="sc-005">화학</a>
							      <a class="dropdown-item bookType" href="sc-006">생물학</a>
							      <a class="dropdown-item bookType" href="sc-007">지구과학</a>
							      <a class="dropdown-item bookType" href="sc-008">천문학</a>
							      <a class="dropdown-item bookType" href="sc-009">청소년 교양과학</a>
							      <a class="dropdown-item bookType" href="sc-010">과학문고</a>
							      <a class="dropdown-item bookType" href="sc-011">대학교재</a>
							      <a class="dropdown-item bookType" href="sc-012">초과학</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#technology" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">기술<span class="dot"><span class="dot">·</span></span>공학</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="technology">
							      <a class="dropdown-item bookType" href="allTechnology">기술<span class="dot">·</span>공학 전체</a>
							      <a class="dropdown-item bookType" href="te-001">건축<span class="dot">·</span>인테리어</a>
							      <a class="dropdown-item bookType" href="te-002">토목<span class="dot">·</span>건설</a>
							      <a class="dropdown-item bookType" href="te-003">환경<span class="dot">·</span>소방<span class="dot">·</span>도시<span class="dot">·</span>조경</a>
							      <a class="dropdown-item bookType" href="te-004">자동차<span class="dot">·</span>운전</a>
							      <a class="dropdown-item bookType" href="te-005">운전면허</a>
							      <a class="dropdown-item bookType" href="te-006">공학일반</a>
							      <a class="dropdown-item bookType" href="te-007">금속<span class="dot">·</span>재료</a>
							      <a class="dropdown-item bookType" href="te-008">기계<span class="dot">·</span>역학<span class="dot">·</span>항공</a>
							      <a class="dropdown-item bookType" href="te-009">전기<span class="dot">·</span>전자</a>
							      <a class="dropdown-item bookType" href="te-010">농수산<span class="dot">·</span>축산</a>
							      <a class="dropdown-item bookType" href="te-011">생활과학</a>
							      <a class="dropdown-item bookType" href="te-012">의학</a>
							      <a class="dropdown-item bookType" href="te-013">대학교재</a>
							</div>
                        </li>
                        <li class="mb-1">
                        	<a href="#computer" class="d-flex dropdown" data-toggle="collapse">
                        		<span class="sidebar-span">컴퓨터<span class="dot">·</span>IT</span><i class="fa fa-angle-down"></i>
                        	</a>
                        	<div class="collapse" id="computer">
							      <a class="dropdown-item bookType" href="allComputer">컴퓨터<span class="dot">·</span>IT 전체</a>
							      <a class="dropdown-item bookType" href="co-001">컴퓨터공학</a>
							      <a class="dropdown-item bookType" href="co-002">IT일반</a>
							      <a class="dropdown-item bookType" href="co-003">컴퓨터입문<span class="dot">·</span>활용</a>
							      <a class="dropdown-item bookType" href="co-004">전산통계<span class="dot">·</span>해석</a>
							      <a class="dropdown-item bookType" href="co-005">OS</a>
							      <a class="dropdown-item bookType" href="co-006">네트워크</a>
							      <a class="dropdown-item bookType" href="co-007">보안<span class="dot">·</span>해킹</a>
							      <a class="dropdown-item bookType" href="co-008">데이터베이스</a>
							      <a class="dropdown-item bookType" href="co-009">개발방법론</a>
							      <a class="dropdown-item bookType" href="co-010">게임</a>
							      <a class="dropdown-item bookType" href="co-011">웹프로그래밍</a>
							      <a class="dropdown-item bookType" href="co-012">프로그래밍<span class="dot">·</span>언어</a>
							      <a class="dropdown-item bookType" href="co-013">모바일프로그래밍</a>
							      <a class="dropdown-item bookType" href="co-014">OA<span class="dot">·</span>사무자동화</a>
							      <a class="dropdown-item bookType" href="co-015">웹사이트</a>
							      <a class="dropdown-item bookType" href="co-016">그래픽</a>
							      <a class="dropdown-item bookType" href="co-017">멀티미디어</a>
							      <a class="dropdown-item bookType" href="co-018">CAD</a>
							      <a class="dropdown-item bookType" href="co-019">자격증<span class="dot">·</span>수험서</a>
							      <a class="dropdown-item bookType" href="co-020">대학교재</a>
							</div>
                        </li>
                    </ul>
                </div>
                
            </div>
        </div>
    </div>
</div>
</div>
	
<jsp:include page="include/footer.jsp"></jsp:include>