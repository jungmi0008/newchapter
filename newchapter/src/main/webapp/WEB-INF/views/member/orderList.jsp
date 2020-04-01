<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp"></jsp:include>

<div class="bg-light py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-0">
            	<a href="home.jsp">홈</a><span class="mx-2 mb-0">/</span>
            	<a href="myPage.jsp">마이페이지</a><span class="mx-2 mb-0">/</span>
            	<strong class="text-black">주문내역</strong>
            </div>
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
                                <th class="product-thumbnail">주문일</th>
                                <th class="product-thumbnail">주문번호</th>
                                <th class="product-thumbnail">주문상품</th>
                                <th class="product-thumbnail">판매자</th>
                                <th class="product-thumbnail">수령인</th>
                                <th class="product-price">주문상태</th>
                                <th class="product-price">비고</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2020-02-08</td>
                                <td>001-AS9268893396<br><a href="#">상세보기</a></td>
                                <td>유럽 기행 뭐시기</td>
                                <td>yuri1111</td>
                                <td>길정미</td>
                                <td>배송완료</td>
                                <td><a href="#">리뷰작성</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <div class="col-md-12 text-center">
                <div class="site-block-27" style="margin-top: 50px;">
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
</div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>