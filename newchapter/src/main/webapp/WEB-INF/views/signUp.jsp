<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp"></jsp:include>
<div class="bg-light py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-0"><a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
                    class="text-black">Contact</strong></div>
        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">회원가입</h2>
            </div>
            <div class="col-md-12">
                <form action="#" method="post">
                    <div class="p-5 p-lg-5 border">
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_email" class="text-black">아이디<span class="text-danger">*</span></label>
                                <br>
                                <a class="btn btn-sm half-size-btn" href="#" style="float: right;">중복확인</a>
                                <input type="email" class="form-control half-size" id="c_email" name="c_email"
                                    placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">이메일</label><span
                                    class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">이름</label><span
                                    class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">비밀번호</label><span
                                    class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">비밀번호 확인</label><span
                                    class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="c_subject" name="c_subject">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">생년월일</label><span
                                    class="text-danger">*</span></label>
                                <br>
                                <select id="year" style="width: 100px;">
                                    <option value="">2020</option>
                                </select>
                                <label>년&nbsp;&nbsp;</label>
                                <select id="year" style="width: 100px;">
                                    <option value="">02</option>
                                </select>
                                <label>월&nbsp;&nbsp;</label>
                                <select id="year" style="width: 100px;">
                                    <option value="">02</option>
                                </select>
                                <label>일&nbsp;&nbsp;</label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">주소</label>
                                <br>
                                <input type="text" class="form-control half-size" id="c_subject" name="c_subject"
                                    value="서울시 강남구">
                                <a class="btn btn-sm half-size-btn" href="#" style="float: right;">주소검색</a>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <input type="submit" class="btn btn-primary btn-lg btn-block" value="회원가입">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="include/footer.jsp"></jsp:include>