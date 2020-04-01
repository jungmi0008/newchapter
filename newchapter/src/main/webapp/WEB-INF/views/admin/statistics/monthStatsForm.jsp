<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "bookshop.shopping.BuyMonthDataBean" %>
<%@ page import = "bookshop.shopping.BuyDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>
<%
request.setCharacterEncoding("utf-8");

String managerId ="";
try{
	managerId = (String)session.getAttribute("managerId");
	   
	if(managerId==null || managerId.equals(""))
	{
       	response.sendRedirect("../logon/managerLoginForm.jsp");
	} else {
String year    = request.getParameter("year");

BuyMonthDataBean buyMonthList = null;
BuyDBBean buyProcess = BuyDBBean.getInstance();
buyMonthList = buyProcess.buyMonth(year);
// System.out.println("\nCOUNT="+count);


String id		= "";
String passwd	= "";
String name		= "";
String tel		= "";
String address	= "";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="../../../../resources/admin_resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../../../../resources/admin_resources/css/morris.css" rel="stylesheet">
	<script src="../../../../resources/admin_resources/js/jquery-3.4.1.js"></script>
	<script src="../../../../resources/admin_resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../../../resources/admin_resources/js/morris.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<title>월별 판매 리스트</title>
</head>

<body>

<div class="container">
<h4 align="center"><b>월별 판매 리스트</b></h4>
	<!-- <form class="form-horizontal" role="form" method="post" action="memberLoginPro.jsp"> -->
	<form class="form-horizontal" role="form" method="post" name="monthStatsForm" action="monthStatsForm.jsp" >
	<div class=form-group>
		<div class=col-sm-1> 
			<h4><span class="label label-info">검색년도</span></h4>
		</div>
		<div class=col-sm-2>
			<input type="text" class="form-control" id="year" name="year" placeholder="Enter Year">
		</div>
		<div class=col-sm-2>
		<input class="btn btn-danger btn-sm" type="submit" value="검색하기"
				action="javascript:window.location=monthStatsForm.jsp">
		</div>
		<input class="btn btn-info btn-sm" type="button" value="메인으로" 
			onclick="javascript:window.location='../managerMain.jsp'">
	</div>


<table class="table table-bordered  border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
	<thead>
		<tr class=info height="30"> 
			<td align="center">1월</td> 
			<td align="center">2월</td> 
			<td align="center">3월</td> 
			<td align="center">4월</td> 
			<td align="center">5월</td> 
			<td align="center">6월</td> 
			<td align="center">7월</td> 
			<td align="center">8월</td> 
			<td align="center">9월</td> 
			<td align="center">10월</td> 
			<td align="center">11월</td> 
			<td align="center">12월</td> 
		</tr>
	</thead>
	<tbody>
		<tr>
    		<td align="right"><%=buyMonthList.getMonth01()%></td>
    		<td align="right"><%=buyMonthList.getMonth02()%></td>
    		<td align="right"><%=buyMonthList.getMonth03()%></td>
    		<td align="right"><%=buyMonthList.getMonth04()%></td>
    		<td align="right"><%=buyMonthList.getMonth05()%></td>
    		<td align="right"><%=buyMonthList.getMonth06()%></td>
    		<td align="right"><%=buyMonthList.getMonth07()%></td>
    		<td align="right"><%=buyMonthList.getMonth08()%></td>
    		<td align="right"><%=buyMonthList.getMonth09()%></td>
    		<td align="right"><%=buyMonthList.getMonth10()%></td>
    		<td align="right"><%=buyMonthList.getMonth11()%></td>
    		<td align="right"><%=buyMonthList.getMonth12()%></td>
		</tr>
		<tr class=danger >
			<td align="right" colspan="12">
				<h4>
					<p class="bg-danger">총 판매 수량  : <%=buyMonthList.getTotal()%></p>
				</h4>
			</td> 
		</tr>
	</tbody>
</table>
</form>

<div id="myChart" style="height: 450px;"></div>

</div>




<script>
var m01 = <%=year%> + "-01";
var m02 = <%=year%> + "-02";
var m03 = <%=year%> + "-03";
var m04 = <%=year%> + "-04";
var m05 = <%=year%> + "-05";
var m06 = <%=year%> + "-06";
var m07 = <%=year%> + "-07";
var m08 = <%=year%> + "-08";
var m09 = <%=year%> + "-09";
var m10 = <%=year%> + "-10";
var m11 = <%=year%> + "-11";
var m12 = <%=year%> + "-12";
new Morris.Line({
	// 그래프를 표시 하기 위한 객체의 ID
	element: 'myChart', 
	// 그래프 데이터. 각 요소가 하나의 그래프 상의 값에 해당 
	data: [ 
		  { year: m01, value: <%=buyMonthList.getMonth01()%> },
		  { year: m02, value: <%=buyMonthList.getMonth02()%> },
		  { year: m03, value: <%=buyMonthList.getMonth03()%> },
		  { year: m04, value: <%=buyMonthList.getMonth04()%> },
		  { year: m05, value: <%=buyMonthList.getMonth05()%> },
		  { year: m06, value: <%=buyMonthList.getMonth06()%> },
		  { year: m07, value: <%=buyMonthList.getMonth07()%> },
		  { year: m08, value: <%=buyMonthList.getMonth08()%> },
		  { year: m09, value: <%=buyMonthList.getMonth09()%> },
		  { year: m10, value: <%=buyMonthList.getMonth10()%> },
		  { year: m11, value: <%=buyMonthList.getMonth11()%> },
		  { year: m12, value: <%=buyMonthList.getMonth12()%> }
	], 
	// 그래프 데이터에서 x축에 해당하는 값의 이름  
	xkey: 'year', 
	// 그래프 데이터에서 y축에 해당하는 값의 이름 
	ykeys: ['value'], 
	// 각 값에 대해서 마우스 오버시 표시 하기 위한 레이블 
	labels: ['Value'] 
});
</script>


</body>
</html>

<% 
	   }
    }catch(Exception e){
		e.printStackTrace();
	}
%>
