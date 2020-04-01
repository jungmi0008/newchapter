<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <form action="#" method="post">
                    <div class="p-3 p-lg-5 border">
                        <div id="profileImg">
                            <img src="images/men.jpg" alt="">
                        </div>
                        <div id="profileName">
                            김민수
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-7 ml-auto">
                <div class="p-4 border mb-3">
                    <span class="d-block text-primary h6 text-uppercase"><a href="#">나의 주문내역 보기</a></span>
                    <p class="mb-0">주문내역 및 배송조회</p>
                </div>
                <div class="p-4 border mb-3">
                    <span class="d-block text-primary h6 text-uppercase"><a href="#">내가 작성한 글 보기</a></span>
                    <p class="mb-0">내가 작성한 상품문의와 상품평보기</p>
                </div>
                <div class="p-4 border mb-3">
                    <span class="d-block text-primary h6 text-uppercase"><a href="#">나의 회원정보 보기</a></span>
                    <p class="mb-0">나의 회원정보 수정과 탈퇴하기</p>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>