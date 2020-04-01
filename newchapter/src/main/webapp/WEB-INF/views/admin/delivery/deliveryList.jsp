<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "bookshop.shopping.DeliveryDataBean" %>
<%@ page import = "bookshop.shopping.BuyDataBean" %>
<%@ page import = "bookshop.shopping.BuyDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>
<%
request.setCharacterEncoding("utf-8");
String	managerId = "";
managerId = (String)session.getAttribute("managerId");

if(managerId == null || managerId.equals("")) {
	response.sendRedirect("../logon/managerLoginForm.jsp");
}

List<BuyDataBean>	buyLists		= null;
BuyDataBean			buyList			= null;
DeliveryDataBean	deliveryList	= null;
int count = 0;
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../js/jquery-3.4.1.js"></script>
	<script src="../../bootstrap/js/bootstrap.min.js"></script>
	<title>배송관리</title>
	<script>
	function openUser(buyId, sanction, bookTitle) {
		window.open('deliveryUpModalForm.jsp?buyId='+buyId+'&sanction='+sanction+'&bookTitle='+bookTitle, 
					'', 'left=400, top=100, width=900, height=600, scrollbar=no, status=no, resizable=no, fullscreen=no, channelmode=no');
		return false;
	}
	</script>
</head>
<body>

<div class="container">
<%
BuyDBBean buyProcess = BuyDBBean.getInstance();
count = buyProcess.getListCount();

if(count <= 0)
{
%>	
	<h3><b>배송목록</b></h3>
	<table>
		<tr>
			<td>배송목록 자료가 없습니다.</td>
		</tr>
	</table>
	<a href="../managerMain.jsp">관리자 메인으로</a>
<%
} else {
	buyLists = buyProcess.getBuyList();
%>	
	<h3><b>배송목록</b></h3>
	<a href="../managerMain.jsp">관리자 메인으로</a>
	<form class="form-horizontal" role="form" method="post" name="deliveryList" action="deliveryList.jsp">
		<table class="table table-bordered table-striped nanum table-hover">
			<tr class=info>
				<td>주문번호</td>
				<td width="160">배송상황</td>
				<td>주문자</td>
				<td>책이름</td>
				<td>주문가격</td>
				<td>주문수량</td>
				<td>주문일</td>
				<td>결재계좌</td>
				<td>배송받는분</td>
				<td>배송지전화번호</td>
				<td>배송지주소</td>
			</tr>
			<%for(int i = 0; i < buyLists.size(); i++) 
			{
				buyList = (BuyDataBean)buyLists.get(i);
			%>
			<tr>
				<td><a href="#" onclick="return openUser('<%=buyList.getBuy_id()%>', '<%=buyList.getSanction()%>', '<%=buyList.getBook_title()%>');"><%=buyList.getBuy_id()%></a></td>
				<!-- 배송상황에 따라 이미지와 글자의 색상을 변경해보자. -->
				<td>
				<%if(buyList.getSanction().equals("상품준비중")) {%>
					<span class="glyphicon glyphicon-gift"></span>
					<p class="text-success"><%=buyList.getSanction()%></p>
				<%} else if(buyList.getSanction().equals("배송중")) {%>
					<span class="glyphicon glyphicon-send"></span>
					<p class="text-warning"><%=buyList.getSanction()%></p>
				<%} else if(buyList.getSanction().equals("배송완료")) {%>
					<span class="glyphicon glyphicon-home"></span>
					<p class="text-danger"><%=buyList.getSanction()%></p>
				<%} %>
				</td>
				<td><%=buyList.getBuyer()				%></td>
				<td><%=buyList.getBook_title()			%>
				</td>
				<td><%=buyList.getBuy_price()			%></td>
				<td><%=buyList.getBuy_count()			%></td>
				<td><%=buyList.getBuy_date().toString()	%></td>
				<td><%=buyList.getAccount()				%></td>
				<td><%=buyList.getDeliveryName()		%></td>
				<td><%=buyList.getDeliveryTel()			%></td>
				<td><%=buyList.getDeliveryAddress()		%></td>
			</tr>
			<%} // End - for %>
		</table>
	</form>

	
<%}%>



</div>

</body>
</html>



















