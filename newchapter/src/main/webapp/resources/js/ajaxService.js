/**
 * 
 */

console.log("carService");
var cartService = (function () {
	
	function add(cart, callback, error) {
		console.log("add시작");
		$.ajax({
			type:'post',
			url: '/cart/add',
			data : JSON.stringify(cart),
			contentType : "application/json; charset=utf-8",
			success:function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function (xhr, status, er) {
				if(error){
					error(er);
				}
			}
		})
	}
	
	function updateCnt(cart, callback, error) {
		$.ajax({
			type : 'post',
			url : '/cart/updateCnt',
			data : JSON.stringify(cart),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if(error) {
					error(er);
				}
			}
		});
	}
	
	 return {
	        add: add,
	        updateCnt : updateCnt
	 };
})();