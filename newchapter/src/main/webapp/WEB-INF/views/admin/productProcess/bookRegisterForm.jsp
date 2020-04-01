<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>

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
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="../../../../resources/admin_resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../../../resources/admin_resources/js/jquery-3.4.1.js"></script>
	<script src="../../../../resources/admin_resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../etc/script.js"></script>
	<title>상품 등록</title>
</head>
<body>

<div class="container">
	<form method="post" name="writeform" action="bookRegisterPro.jsp" 
		enctype="multipart/form-data">
		<h2>책 등록</h2>
		<table class="table table-bordered table-striped nanum table-hover" >
			<colgroup>
				<col class="col-sm-1">
				<col class="col-sm-3">
			</colgroup>		
			<tbody>
				<tr class=success>
					<td align="right" colspan="2">
						<a href="../managerMain.jsp"> 관리자 메인으로</a>
					</td>
				</tr>
				<tr>
					<td>분류 선택</td>
					<td align=left>
						<select name="book_kind">
							<option value="100">문학</option>
							<option value="200">외국어</option>
							<option value="300">컴퓨터</option>
						</select>
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">제 목</td>
					<td align="left">
						<input type="text" size="50" maxlength="50" name="book_title"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">가 격</td>
					<td align="left">
						<input type="text" size="10" maxlength="10" name="book_price"/>&nbsp;원
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">수 량</td>
					<td align="left">
						<input type="text" size="5" maxlength="5" name="book_count"/>&nbsp;권
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">저 자</td>
					<td align="left">
						<input type="text" size="20" maxlength="20" name="author"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">출판사</td>
					<td align="left">
						<input type="text" size="50" maxlength="50" name="publishing_com"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">출판일</td>
					<td align="left">
						<select name="publishing_year">
						<%
						Timestamp nowTime = new Timestamp(System.currentTimeMillis());
						int lastYear = Integer.parseInt(nowTime.toString().substring(0, 4));
						for(int i = lastYear; i >= 2010; i--) {
						%>
							<option value="<%=i%>"><%=i%></option>
						<%} %>
						</select>&nbsp;년
						
						<select name="publishing_month">
						<%for(int i = 1; i <= 12; i++) { %>
							<option value="<%=i%>"><%=i%></option>
						<%} %>
						</select>&nbsp;월
						
						<select name="publishing_day">
						<%for(int i = 1; i <= 31; i++) { %>
							<option value="<%=i%>"><%=i%></option>
						<%} %>
						</select>&nbsp;일
					</td>				
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">이미지a</td>
					<td align="left">
						<input type="file" name="book_image"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">내 용</td>
					<td align="left">
						<textarea name="book_content" rows="12" cols="100"></textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="#B3E6FF">할인율</td>
					<td align="left">
						<input type="text" size="5" maxlength="2" name="discount_rate"/>&nbsp;%
					</td>
				</tr>
				<tr class=info>
					<td colspan=2 align=center>
						<input type="button" class="btn btn-primary" value="책등록" onclick="checkForm(this.form)">
						<input type="reset"  class="btn btn-warning" value="다시작성">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>

</body>
</html>
<%
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>






