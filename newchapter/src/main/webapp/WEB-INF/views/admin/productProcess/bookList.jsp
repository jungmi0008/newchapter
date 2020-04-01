<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "bookshop.master.ShopBookDBBean" %>
<%@ page import = "bookshop.master.ShopBookDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<%
String managerId = "";
try {
	managerId = (String)session.getAttribute("managerId");
	//세션값이 없으면 정상적으로 로그인을 하지 않은 경우이므로 쫓아낸다.
	if(managerId == null || managerId.equals("")) {
		response.sendRedirect("../logon/managerLoginForm.jsp");
	} else {
		//정상적으로 로그인하고 들어온 경우는 웹페이지를 보여준다.
%>
<%! 
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<%
//List<ShopBookDataBean> bookList = null;
//데이터가 있을 경우는 문제가 발생하지 않으나,
//데이터가 없을 경우 java.lang.NullPointException 이 발생하기 때문에
//생성을 하여 사용하는 것이 좋다.
List<ShopBookDataBean> bookList = new ArrayList<ShopBookDataBean>();

int number = 0;			//책의 종류에 따른 보유한 책의 권수
String book_kind = ""; 	//책의 종류

book_kind = request.getParameter("book_kind");
ShopBookDBBean bookProcess = ShopBookDBBean.getInstance();
int count = bookProcess.getBookCount2(book_kind);

String book_kindName = "";
if(book_kind.equals("100")) 	   {
	book_kindName = "문학"; 
} else if(book_kind.equals("200")) {	
	book_kindName = "외국어"; 
} else if(book_kind.equals("300")) {	
	book_kindName = "컴퓨터"; 
} else if(book_kind.equals("all")) {	
	book_kindName = "전체";
}

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="../../../../resources/admin_resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../../../resources/admin_resources/js/jquery-3.4.1.js"></script>
	<script src="../../../../resources/admin_resources/bootstrap/js/bootstrap.min.js"></script>
	<title>등록된 책 목록</title>
</head>
<body>

<a href="../managerMain.jsp"> 관리자 메인으로</a>&nbsp;
<p><%=book_kindName%> 분류의 목록 :
<%if(book_kind.equals("all")) { %>
	<%=count %>권
<%} else {%>
	<%=bookList.size() %>권
<%} %>
</p>


<table class="table">
	<tr>
		<td>
			<div><a href="bookRegisterForm.jsp" class="btn btn-primary btn-sm active" role="button">책 등록</a></div>
		</td>
		<td>
			<!-- 도서종류를 선택하는 메뉴 -->
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle" 
					data-toggle="dropdown" aria-expanded="false">도서종류<span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="bookList.jsp?book_kind=all">전체목록보기</a></li>
						<li><a href="bookList.jsp?book_kind=100">문학</a></li>
						<li><a href="bookList.jsp?book_kind=200">외국어</a></li>
						<li><a href="bookList.jsp?book_kind=300">컴퓨터</a></li>
					</ul> 
			</div>
		</td>
	</tr>
</table>

<% //데이터가 한권도 없으면
if(count <= 0) {
%>
<table class="table table-bordered table-striped nanum table-hover">
	<tr>
		<td align="center"><h1>등록된 책이 없습니다.</h1></td>
	</tr>
</table>

<%} else {
	//등록된 책이 있으면 책의 내용을 가져온다.
	bookList = bookProcess.getBooks(book_kind);
%>
	
<table class="table table-bordered table-striped nanum table-hover">
	<tr height="30" class="info">
		<td align="center" width="30">번호</td>
		<td align="center" width="30">책분류</td>
		<td align="center" width="99">제목</td>
		<td align="center" width="50">가격</td>
		<td align="center" width="50">수량</td>
		<td align="center" width="70">저자</td>
		<td align="center" width="70">출판사</td>
		<td align="center" width="50">출판일</td>
		<td align="center" width="50">책이미지</td>
		<td align="center" width="30">할인율</td>
		<td align="center" width="70">등록일</td>
		<td align="center" width="50">수정</td>
		<td align="center" width="50">삭제</td>
	</tr>
	<%for(int i = 0; i < bookList.size(); i++) {
		ShopBookDataBean book = (ShopBookDataBean)bookList.get(i);
	%>
	<tr height="30">
		<td width="30"><%=++number%></td>
		<td width="30"><%=book.getBook_kind() %></td>
		<td width="100" align="left"><%=book.getBook_title() %></td>
		<td width="50" align="right"><%=book.getBook_price() %>&nbsp;원</td>
		<td width="50" align="right">
		<%if(book.getBook_count() == 0) { %>
			<font color="red">일시품절</font>
		<%} else {%>
			<%=book.getBook_count() %>&nbsp;권
		<%} %>
		</td>
		<td width="70"><%=book.getAuthor() %></td>
		<td width="70"><%=book.getPublishing_com() %></td>
		<td width="50" align="right"><%=book.getPublishing_date() %></td>
		<td width="50"><%=book.getBook_image() %></td>
		<td width="50" align="right"><%=book.getDiscount_rate() %>&nbsp;%</td>
		<td width="50" align="right"><%=sdf.format(book.getReg_date()) %></td>
		<td width="50" align="center">
			<a href="bookUpdateForm.jsp?book_id=<%=book.getBook_id()%>&book_kind=<%=book.getBook_kind()%>">수정</a></td>
		<td width="50" align="center">
			<a href="bookDeleteForm.jsp?book_id=<%=book.getBook_id()%>&book_kind=<%=book.getBook_kind()%>">삭제</a></td>
	</tr>
	<%} %>
</table>
	
<%}%>
<br>
<a href="../managerMain.jsp">관리자 메인으로</a>
</body>
</html>
<%
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>






















