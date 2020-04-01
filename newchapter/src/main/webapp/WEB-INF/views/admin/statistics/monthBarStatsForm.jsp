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
	<title>월별 판매 현황</title>
</head>

<body>

<div class="container">
<h4 align="center"><b><%=year %>년도 월별 판매 현황</b></h4>
	<!-- <form class="form-horizontal" role="form" method="post" action="memberLoginPro.jsp"> -->
	<form class="form-horizontal" role="form" method="post" name="monthBarStatsForm" action="monthBarStatsForm.jsp" >
	<div class=form-group>
		<div class=col-sm-1> 
			<h4><span class="label label-info">검색년도</span></h4>
		</div>
		<div class=col-sm-2>
			<input type="text" class="form-control" id="year" name="year" placeholder="Enter Year">
		</div>
		<div class=col-sm-2>
		<input class="btn btn-danger btn-sm" type="submit" value="검색하기"
				action="javascript:window.location=monthBarStatsForm.jsp">
		</div>
		<input class="btn btn-info btn-sm" type="button" value="메인으로" 
			onclick="javascript:window.location='../managerMain.jsp'">
	</div>


<table class="table table-bordered" border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
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

	<div id="myBarchart" style="height: 400px;"></div>
</div>

<script>
// Use Morris.Bar
new Morris.Bar({
  element: 'myBarchart',
  data: [
	    {x:  '1월', y: <%=buyMonthList.getMonth01()%>},
	    {x:  '2월', y: <%=buyMonthList.getMonth02()%>},
	    {x:  '3월', y: <%=buyMonthList.getMonth03()%>},
	    {x:  '4월', y: <%=buyMonthList.getMonth04()%>},
	    {x:  '5월', y: <%=buyMonthList.getMonth05()%>},
	    {x:  '6월', y: <%=buyMonthList.getMonth06()%>},
	    {x:  '7월', y: <%=buyMonthList.getMonth07()%>},
	    {x:  '8월', y: <%=buyMonthList.getMonth08()%>},
	    {x:  '9월', y: <%=buyMonthList.getMonth09()%>},
	    {x: '10월', y: <%=buyMonthList.getMonth10()%>},
	    {x: '11월', y: <%=buyMonthList.getMonth11()%>},
	    {x: '12월', y: <%=buyMonthList.getMonth12()%>}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Qty'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
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
