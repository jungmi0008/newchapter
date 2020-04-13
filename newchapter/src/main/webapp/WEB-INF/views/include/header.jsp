<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>The New Chapter - 인터넷 서점의 새로운 장</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="../../../resources/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../resources/css/magnific-popup.css">
    <link rel="stylesheet" href="../../../resources/css/jquery-ui.css">
    <link rel="stylesheet" href="../../../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../../resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../../../resources/css/aos.css">
    <link rel="stylesheet" href="../../../resources/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script>
        function openModal() {
            $("#myModal").modal({
                backdrop: true
            });
        }
        function logout() {
        	document.getElementById('logoutForm').submit();
        }
        
    </script>
</head>

<body>
    <div class="site-wrap">
        <header class="site-navbar" role="banner">
            <div class="site-navbar-top">
                <div class="container">
                    <div class="row align-items-center">

                        <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                        <form action="" class="site-block-top-search">
		                	<span class="icon icon-search2"></span>
		                	<input type="text" class="form-control border-0" placeholder="검색하기">
		                </form>
                        </div>

                        <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                            <div class="site-logo">
                                <a href="/" class="js-logo-clone">New Chapter</a>
                            </div>
                        </div>

                        <!-- 메뉴바 -->
                        <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                            <div class="site-top-icons">
                                <ul>
		                        	<sec:authorize access="isAnonymous()">
		                                <li><a href="/customLogin">로그인</a></li>
		                            </sec:authorize>
		                            <sec:authorize access="isAuthenticated()">                       	
		                            	<li>
			                            	<form action="/customLogout" method='post' id="logoutForm">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
											</form>
											<a href="javascript:logout()">로그아웃</a>									
		                                </li>
		                            </sec:authorize>
		                            <sec:authorize access="isAnonymous()">
                                    	<li><a href="/signUp">회원가입</a></li>
                                    </sec:authorize>
                                    <sec:authorize access="isAuthenticated()">
	                                    <li>
	                                        <a href="/member/cart" class="site-cart">
	                                            <span>장바구니</span>
	                                            <span class="count">2</span>
	                                        </a>
	                                    </li>
	                                </sec:authorize>
                                    <li class="d-inline-block d-md-none ml-md-0"><a href="#"
                                            class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <nav class="site-navigation text-right text-md-center" role="navigation">
                <div class="container">
                    <ul class="site-menu js-clone-nav d-none d-md-block">
                        <li class="active">
                            <a href="/">홈</a>
                        </li>
                        <li>
                            <a href="/shop">국내도서</a>
                        </li>
                        <li>
                            <a href="/shop">외국도서</a>
                        </li>
                        <li class="has-children">
                            <a href="/member/myPage">마이 페이지</a>
                            <ul class="dropdown">
                                <li><a href="/member/orderList">주문내역</a></li>
                                <li><a href="/member/myComment">나의 상품평</a></li>
                                <li><a href="/member/myQuestion">나의 상품문의</a></li>
                                <li><a href="/member/myDetail">회원정보</a></li>
                            </ul>
                        </li>
                        <li><a href="/member/event">이벤트</a></li>
                        <li><a href="/customerService">고객센터</a></li>
                    </ul>
                </div>
            </nav>
             <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog">
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			        	<h4 class="modal-title">Modal Header</h4>
  			            <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        <div class="modal-body">
			          <p>Some text in the modal.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			    </div>
			  </div>
  
            
        </header>
        <!-- site-header END -->