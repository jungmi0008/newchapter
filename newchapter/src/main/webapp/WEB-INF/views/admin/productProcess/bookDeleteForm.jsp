<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		String book_kind = request.getParameter("book_kind");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>책 삭제</title>
</head>
<body>
	<h2>책 삭제</h2>
	<br>
	<form method="post" name="delForm" 
	action="bookDeletePro.jsp?book_id=<%=book_id %>&book_kind=<%=book_kind %>"
	onsubmit="return deleteSave()">
		<tr>
			<td align="right">
				<a href="../managerMain.jsp"> 관리자 메인으로</a>&nbsp;
				<a href="bookList.jsp?book_kind=<%=book_kind %>">목록으로</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<input type="submit" value="삭제">
			</td>
		</tr>
	</form>
</body>
</html>
<%
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>













