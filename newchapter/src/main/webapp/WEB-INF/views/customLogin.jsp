<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<jsp:include page="include/header.jsp"></jsp:include>
<div class="bg-light py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-0">
            	<a href="home.jsp">홈</a><span class="mx-2 mb-0">/</span>
            	<strong class="text-black">로그인</strong>
            </div>
        </div>
    </div>
</div>

<div class="site-section" style="overflow: hidden">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">로그인</h2>
                <p class="mb-3 login-alert-p">
	                <c:if test="${!empty error}">
	                <c:out value="${error}"/>
	                </c:if>
	                <c:if test="${!empty logout}">
	                <c:out value="${logout}"/>
	                </c:if>
                </p>
            </div>
            <div style="width:100%; height:60vh;">
            <div class="col-md-6" style="float:left;">
                <form action="/login" method="post">
                    <div class="p-5 p-lg-5 border">
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">아이디</label>
                                <input type="text" class="form-control" id="c_email" name="username" placeholder="userID">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="c_subject" class="text-black">비밀번호 </label>
                                <input type="password" class="form-control" id="c_subject" name="password" placeholder="password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12" style="text-align: center;">
                                <a href="#">아이디 / </a><a href="#">비밀번호 찾기</a>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                            	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
                                <input type="checkbox" name="remember-me">로그인 상태 유지
                                <input type="submit" class="btn btn-primary btn-lg btn-block" value="로그인">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <button class="btn btn-primary btn-lg btn-block">회원가입하러 가기</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6" style="float:left;">
            	<div>
            		<img src="../../../resources/images/site_cover_1.jpg" style="width:100%">
            	</div>
            </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="include/footer.jsp"></jsp:include>