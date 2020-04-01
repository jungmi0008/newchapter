<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="bg-light py-3">
    <div class="container">
        <div class="row">
            <a href="home.jsp">홈</a><span class="mx-2 mb-0">/</span>
            	<strong class="text-black">고객센터</strong>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">이메일 문의</h2>
            </div>
            <div class="col-md-7">

                <form action="#" method="post">

                    <div class="p-3 p-lg-5 border">
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_fname" class="text-black">이름<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="c_fname" name="c_fname">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_email" class="text-black">답변 받을 이메일 주소 <span
                                        class="text-danger">*</span></label>
                                <input type="email" class="form-control" id="c_email" name="c_email" placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">이메일 제목</label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_message" class="text-black">문의내용 </label>
                                <textarea name="c_message" id="c_message" cols="30" rows="7"
                                    class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <input type="submit" class="btn btn-primary btn-lg btn-block" value="문의하기">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-5 ml-auto">
                <div class="p-4 border mb-3">
                    <span class="d-block text-primary h6 text-uppercase">판매자 가이드</span>
                    <p class="mb-0"></p>
                </div>
                <div class="p-4 border mb-3">
                    <span class="d-block text-primary h6 text-uppercase">전화상담시간</span>
                    <p class="mb-0"></p>
                </div>
                <div class="p-4 border mb-3">
                    <span class="d-block text-primary h6 text-uppercase">FAQ</span>
                    <p class="mb-0">보러가기</p>
                </div>

            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>