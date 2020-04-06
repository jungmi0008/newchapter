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
    <script src="../../../resources/js/main.js"></script>
    <script src="../../../resources/js/ajaxService.js"></script>
	<script>
	
	$(document).ready(function () {
		
		/* 각 제품의 최종가격과 전체 결제 금액 */
		showFinalPrice();
		function showFinalPrice() {
			var cntArr 		= document.getElementsByClassName("bookCntInput");
			var priceArr 	= document.getElementsByClassName("discounted_price");
			
			var finalArr 	= document.getElementsByClassName("final_price");
			
			var totalP = 0;
			
			for(var i = 0; i < cntArr.length; i++){
				var cnt		= cntArr[i].value;
				var price 	= priceArr[i].innerHTML.trim();
				var finalP 	= cnt * price;/* 각 제품의 최종가격(할인가 * 개수) */
				
				var regexp = /\B(?=(\d{3})+(?!\d))/g;/* 1000자리 표시 */
				var finalStr = finalP.toString().replace(regexp, ',');
				
				finalArr[i].innerHTML = finalStr+"원";
				
				totalP += finalP;
			}
			
			var total_price = document.getElementById("total_price");
			
			
			total_price.innerHTML = totalP.toString().replace(regexp, ',')+"원";
			
			
			final_totalP = totalP + 2500;
			var final_total_price = document.getElementById("final_total_price");
			final_total_price.innerHTML = final_totalP.toString().replace(regexp, ',')+"원";
		}
		
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

		/* cart.jsp  */
		/* 장바구니에 상품 개수 변경 */
		$(".minusBtn").on("click", function(e) {
			var cnt = $(this).parent().next().val();
			var pno = $(this).parent().parent().find("input[name='pno']").val();
			var m_id = $("#m_idInput").val();
			
			if(cnt == 0) {
				alert("주문 가능 수량은 최소 1개입니다.");
				$(this).parent().next().val(1);
				return false;
			}
			
			var cart = {
					cart_count : cnt,
					pno : pno,
					m_id : m_id
			};
			
			cartService.updateBookCnt(cart, function(result) {
				console.log(result);
				showFinalPrice();
			});
		});
		
		$(".plusBtn").on("click", function(e) {
			var cnt = $(this).parent().prev().val();
			var pno = $(this).parent().parent().find("input[name='pno']").val();
			var m_id = $("#m_idInput").val();
			
			
			var cart = {
					cart_count : cnt,
					pno : pno,
					m_id : m_id
			};
			
			cartService.updateBookCnt(cart, function(result) {
				console.log(result);
				showFinalPrice();
			}); 
		});
		
		$(".bookCntInput").on("blur", function() {
			var cnt	 = $(this).val();
			var pno  = $(this).parent().find("input[name='pno']").val();
			var m_id = $("#m_idInput").val();
			
			if(cnt == 0) {
				alert("주문 가능 수량은 최소 1개입니다.");
				$(this).val(1);
				return false;
			}
			
			var cart = {
					cart_count : cnt,
					pno : pno,
					m_id : m_id
			};
			
			cartService.updateBookCnt(cart, function(result) {
				console.log(result);
				showFinalPrice();
			});
		}) ;
		
		/* 장바구니 제품 삭제 */
		$(".deleteBtn").on("click", function(e) {
			e.preventDefault();
			var pno = $(this).parent().prev().prev().find("input[name='pno']").val();
			var m_id = $("#m_idInput").val();
			
			var cart = {
					pno : pno,
					m_id : m_id
			};
			
			cartService.deleteBook(cart, function(result) {
				console.log(result);
				window.location.reload();
			});
		});
		
	    var csrfHeaderName ="${_csrf.headerName}"; 
	    var csrfTokenValue="${_csrf.token}";
	    
	});
	</script>
	
    </body>

    </html>