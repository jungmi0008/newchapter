<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>
<%@ page import = "bookshop.master.ShopBookDBBean" %>
<%@ page import = "bookshop.master.ShopBookDataBean" %>

<%
String managerId = "";
try {
	managerId = (String)session.getAttribute("managerId");
	//세션값이 없으면 정상적으로 로그인을 하지 않은 경우이므로 쫓아낸다.
	if(managerId == null || managerId.equals("")) {
		response.sendRedirect("../logon/managerLoginForm.jsp");
	} else {
		//정상적으로 로그인하고 들어온 경우는 웹페이지를 보여준다.
		int book_id = Integer.parseInt(request.getParameter("book_id"));
		System.out.println("책아이디:"+request.getParameter("book_id"));
		String book_kind = request.getParameter("book_kind");
		try {
			ShopBookDBBean bookProcess = ShopBookDBBean.getInstance();
			ShopBookDataBean book = bookProcess.getBook(book_id);
			
			System.out.println(book.getBook_id() + ":" + book.getBook_kind() );
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../../../../resources/admin_resources/etc/script2.js"></script>
	<title>도서정보 수정</title>
</head>
<body>

	<form method="post" name="writeform" action="bookUpdatePro.jsp" enctype="multipart/form-data">
		<table>
			<tr>
				<td align="right" colspan="2">
					<a href="../managerMain.jsp"> 관리자 메인으로</a>&nbsp;
					<a href="bookList.jsp?book_kind=<%=book_kind %>"> 목록으로</a>
				</td>
			</tr>
			<tr>
				<td width="100">분류 선택</td>
				<td width="400" align="left">
					<select name="book_kind">
						<option value="100"
							<%if(book.getBook_kind().equals("100")) {%>selected<%} %>>문학</option>
						<option value="200"
							<%if(book.getBook_kind().equals("200")) {%>selected<%} %>>외국어</option>
						<option value="300"
							<%if(book.getBook_kind().equals("300")) {%>selected<%} %>>컴퓨터</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="100">제 목</td>
				<td width="400" align="left">
					<input type="text" size="50" maxlength="50" name="book_title" 
						value="<%=book.getBook_title()%>">
					<input type="hidden" name="book_id" value="<%=book_id %>">
				</td>
			</tr>
			<tr>
				<td width="100">가 격</td>
				<td width="400" align="left">
					<input type="text" size="5" maxlength="5" name="book_price" 
						value="<%=book.getBook_price()%>">원
				</td>				
			</tr>
			<tr>
				<td width="100">수 량</td>
				<td width="400" align="left">
					<input type="text" size="5" maxlength="5" name="book_count" 
						value="<%=book.getBook_count()%>">권
				</td>				
			</tr>
			<tr>
				<td width="100">저 자</td>
				<td width="400" align="left">
					<input type="text" size="10" maxlength="10" name="author" 
						value="<%=book.getAuthor()%>">
				</td>				
			</tr>
			<tr>
				<td width="100">출판사</td>
				<td width="400" align="left">
					<input type="text" size="30" maxlength="30" name="publishing_com" 
						value="<%=book.getPublishing_com()%>">
				</td>				
			</tr>
			<tr>
				<td width="100">출판일</td>
				<td width="400" align="left">
					<select name="publishing_year">
					<% Timestamp nowTime = new Timestamp(System.currentTimeMillis());
					int lastYear = Integer.parseInt(nowTime.toString().substring(0, 4));
					for(int i = lastYear; i >= 2010; i--) {
					%>
						<option value="<%=i %>"
						<%if(Integer.parseInt(book.getPublishing_date().substring(0, 4))==i) {%>
							selected<%} %>><%=i %></option>
					<%} %>
					</select>년
					<select name="publishing_month">
					<%for(int i = 1; i <= 12; i++) {%>
						<option value="<%=i %>"
						<%if(Integer.parseInt(book.getPublishing_date().substring(5, 7))==i) {%>
							selected<%} %>><%=i %></option>
					<%} %>
					</select>월
					<select name="publishing_day">
					<%for(int i = 1; i <= 31; i++) {%>
						<option value="<%=i %>"
						<%if(Integer.parseInt(book.getPublishing_date().substring(8))==i) {%>
							selected<%} %>><%=i %></option>
					<%} %>
					</select>일
				</td>				
			</tr>
			<tr>
				<td width="100">이미지</td>
				<td width="400" align="left">
					<input type="file" name="book_image"><%=book.getBook_image()%>
				</td>				
			</tr>
			<tr>
				<td width="100">내 용</td>
				<td width="400" align="left">
					<textarea name="book_content" rows="12" cols="100">
						<%=book.getBook_content()%></textarea>
				</td>				
			</tr>
			<tr>
				<td width="100">할인율</td>
				<td width="400" align="left">
					<input type="text" size="5" maxlength="2" name="discount_rate" 
						value="<%=book.getDiscount_rate()%>">%
				</td>				
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="책수정" onclick="updateCheckForm(this.form)">
					<input type="reset" value="다시작성">
				</td>
			</tr>
		
		</table>
	
	
	</form>

</body>
</html>
<%
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>























