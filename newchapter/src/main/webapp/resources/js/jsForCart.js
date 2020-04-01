/**
 * 
 */

	function changeCnt(bookCntForm) {
		
		var cart = {
				m_id 	: bookCntForm.m_id.value,
				cart_count : bookCntForm.bookCnt.value,
				pno : bookCntForm.pno.value
		}
		
		if(confirm("수정하시겠습니까?")) {
			cartService.updateCnt(cart, function(result){
				alert(result);
			});
		}
	}