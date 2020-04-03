<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- site-footer -->
    <footer class="site-footer border-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="footer-heading mb-4">사이트 맵</h3>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <ul class="list-unstyled">
                                <li><a href="/home">홈</a></li>
                                <li><a href="/customLogin">로그인</a></li>
                                <li><a href="/signUp">회원가입</a></li>
                                <li><a href="/csCenter">고객센터</a></li>
                                <li><a href="/event">이벤트</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <ul class="list-unstyled">
                                <li><a href="/member/cart">장바구니</a></li>
                                <li><a href="/member/orderList">주문내역</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <ul class="list-unstyled">
                                <li><a href="/shop">국내도서</a></li>
                                <li><a href="/shop">외국도서</a></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="block-5 mb-5">
                        <h3 class="footer-heading mb-4">고객센터</h3>
                        <ul class="list-unstyled">
                            <li class="address">서울시 강남구</li>
                            <li class="phone"><a href="tel://021234567">02 123 4567</a></li>
                            <li class="email">new_chapter_admin@gmail.com</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <!-- <script data-cfasync="false"
                            src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js">
                        </script> -->
                        <script>
                            document.write(new Date().getFullYear());
                        </script> All rights reserved | This template is made with <i class="icon-heart"
                            aria-hidden="true"></i>
                        by <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>

            </div>
        </div>
    </footer>
    </div>

    <script src="../../../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../../../resources/js/jquery-ui.js"></script>
    <script src="../../../resources/js/popper.min.js"></script>
    <script src="../../../resources/js/bootstrap.min.js"></script>
    <script src="../../../resources/js/owl.carousel.min.js"></script>
    <script src="../../../resources/js/jquery.magnific-popup.min.js"></script>
    <script src="../../../resources/js/aos.js"></script>
    <script src="../../../resources/js/jsForShop.js"></script>
    
    <script>
    /* cart.jsp */
	/* 장바구니 상품 수량 수정 */
	function changeCnt(bookForm) {
		console.log(bookForm);
		
		var cart = {
				m_id 		: bookForm.m_id.value,
				cart_count 	: bookForm.bookCnt.value,
				pno 		: bookForm.pno.value
		}
		
		console.log(m_id);
		console.log(cart_count);
		console.log(pno);
		
		if(confirm("수정하시겠습니까?")) {
			cartService.updateCnt(cart, function(result){
				alert(result);
			});
		}
	}
    </script>
    
    <script src="../../../resources/js/main.js"></script>
    <script src="../../../resources/js/ajaxService.js"></script>
    <script src="../../../resources/js/jsForShopSingle.js"></script>
    <script src="../../../resources/js/jsForCart.js"></script>
	<script>
	
	$(document).ready(function () {
		
		$(document).ajaxSend(function(e, xhr, options) { 
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
		});
		
		/* shopSingle.jsp  */
		/* 장바구니에 상품 추가 */
		$("#goCartBtn"). on("click", function (e) {
			if($("#goCartForm").find("input[name='m_id']").val() == 'anonymous') {
				alert("로그인이 필요한 기능입니다.");
				return false;
			}
			
			var cart = {
					m_id 		: $("#goCartForm").find("input[name='m_id']").val(),
					cart_count 	: $("#goCartForm").find("input[name='cart_count']").val(),
					pno 		: $("#goCartForm").find("input[name='pno']").val()
			};
			
			if(confirm("장바구니에 넣으시겠습니까?")) {
				cartService.add(cart, function(result) {
					/*window.open("askGoCart.jsp", "confirm",
				            "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, left=500, right=500, width=500, height=200"
				            );*/
					if(confirm("장바구니에 상품이 담겼습니다! 장바구니 페이지로 이동하시겠습니까?")) {
						location.href="/member/cart";
					} else {
						return false;
					}
											
				});
			} else {
				return false;
			}
		});
		
		
		
	    var csrfHeaderName ="${_csrf.headerName}"; 
	    var csrfTokenValue="${_csrf.token}";
	    
	});
	</script>
	
    </body>

    </html>