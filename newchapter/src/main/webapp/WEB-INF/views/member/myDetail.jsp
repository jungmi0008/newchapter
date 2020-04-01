<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="bg-light py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-0"><a href="index.html">홈</a> <span class="mx-2 mb-0">/</span>
                <a href="myPage.html">마이페이지</a><span class="mx-2 mb-0">/</span>
                <strong class="text-black">회원정보수정</strong></div>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">회원정보수정</h2>
            </div>
            <div class="col-md-12">
                <form action="#" method="post">
                    <div class="p-5 p-lg-5 border">
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_email" class="text-black">아이디</label>
                                <br>
                                <input type="email" class="form-control" id="c_email" name="c_email" placeholder=""
                                    value="jungmi0008" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_email" class="text-black">이메일</label>
                                <input type="email" class="form-control" id="c_email" name="c_email" placeholder=""
                                    value="jungmi0008@naver.com" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">이름</label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject" value="길정미"
                                    readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">비밀번호</label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">비밀번호 확인</label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">주소</label>
                                <br>
                                <input type="text" class="form-control half-size" id="c_subject" name="c_subject"
                                    value="서울시 강남구" readonly>
                                <a class="btn btn-sm half-size-btn" href="#" style="float: right;">주소수정</a>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">프로필사진</label>
                                <br>
                                <a href="javascript:profileImgUpdate();">
                                    <img src="images/men.jpg" alt="" width="120px" height="120px">
                                </a>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <input type="submit" class="btn btn-primary btn-lg btn-block" value="수정">
                                <button class="btn btn-primary btn-lg btn-block">마이페이지로 가기</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>