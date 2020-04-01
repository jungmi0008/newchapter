<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../../css/morris.css" rel="stylesheet">
	<script src="../../js/jquery-3.4.1.js"></script>
	<script src="../../bootstrap/js/bootstrap.min.js"></script>
	<script src="../../js/morris.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<title>도서 종류별 연간 판매비율</title>
</head>
<body>

<div class="container">

<h2 align="center"><b>도서 종류별 연간 판매 비율</b></h2><hr><br>

<form class="form-horizontal" role="form" method="post" name="bookKindStatsForm"
	action="bookKindStatsForm.jsp">
	<div class="form-group">
		<div class="col-sm-1">
			<h4><span class="label label-info">검색년도</span></h4>
		</div>
		<div class="col-sm-1">
			<input type="text" class="form-control" id="year" name="year" 
					maxlength="4" placeholder="Enter Year">
		</div>
		<div class="col-sm-2">
			<input class="btn btn-danger btn-sm" type="submit" value="검색하기"
				action="javascript:window.location=bookKindStatsForm.jsp">
			<input class="btn btn-info btn-sm" type="button" value="메인으로"
				onclick="javascript:window.location='../managerMain.jsp'"> 
		</div>
	</div>
	<table class="table table-bordered" border="1" width="700" cellspacing="0"
		cellpadding="0" align="center">
		<thead>
			<tr class="info">
				<td align="center"><h3>문학</h3>
				<td align="center"><h3>외국어</h3>
				<td align="center"><h3>컴퓨터</h3>
			</tr>
		</thead>	
		<tbody>
			<tr>
				<td align="center"><h3></h3></td>
				<td align="center"><h3></h3></td>
				<td align="center"><h3></h3></td>
			</tr>
			<tr class="danger">
				<td align="right" colspan="12">
					<h3><p class="bg-danger">총 판매수량 :</p></h3>
				</td>
			</tr>
		</tbody>
	</table> 
</form>
</div>

<div id="myfirstchart" style="height:300px;"></div>

<script>

</script>

</body>
</html>
























