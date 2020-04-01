<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "bookshop.shopping.BuyDBBean" %>
<%
request.setCharacterEncoding("utf-8");
if(session.getAttribute("managerId") == null) {
	response.sendRedirect("../managerMain.jsp");
} else {
	String	buy_id		= request.getParameter("buyId");
	//라디오버튼은 같은 이름이 여러개라도 선택된 값만 전송되기 때문에
	//getParameter로 받으시면 됩니다.
	String	sanction	= request.getParameter("sanction");
	String	bookTitle	= request.getParameter("bookTitle");

	BuyDBBean buyProcess = BuyDBBean.getInstance();
	buyProcess.updateDelivery(buy_id, sanction, bookTitle);
}
%>
<script>
	alert("배송상태가 수정되었습니다.");
	history.go(-1);
</script>













