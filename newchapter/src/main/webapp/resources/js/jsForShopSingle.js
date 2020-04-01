/**
 * 
 */
/* shopSingle.jsp  */

$(document).ready(function () { 
	$("#goCartBtn"). on("click", function(e) {
		if($("#goCartForm").find("input[name='m_id']").val() == 'anonymous') {
			alert("로그인이 필요한 기능입니다.");
			return false;
		}
		
		var cart = {
				m_id 		: $("#goCartForm").find("input[name='m_id']").val(),
				cart_count 	: $("#goCartForm").find("input[name='cart_count']").val(),
				pno 		: $("#goCartForm").find("input[name='m_id']").val()
		};
		if(confirm("장바구니에 넣으시겠습니까?")) {
			cartService.add(cart,function(result) {
				/*window.open("askGoCart.jsp", "confirm",
			            "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, left=500, right=500, width=500, height=200"
			            );*/
				alert(result);
			});
		} else {
			return false;
		}
	});
});