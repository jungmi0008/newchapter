<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>new chpater admin</title>
    <meta charset="utf-8">
    <link href="../../../resources/admin_resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../../resources/admin_resources/js/jquery-3.4.1.js"></script>
	<script src="../../../resources/admin_resources/bootstrap/js/bootstrap.min.js"></script>
	<style>
		body {
			position:	relative;
		}
		.affix {
			top:		0;
			width:		100%;
			z-index:	9999		important;
		}
		.navbar {
			margin-bottom:	0px;
		}
		.affix ~ .container-fluid {
			position:	relative;
			top:		50px;
		}
	</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

<div class="container-fluid" style="background-color:#F44336; color:#FFF; height:200px;">
	<h1>newchapter 쇼 핑 몰 관 리 페이지입니다</h1>
</div>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">BookShop</a>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 상품관리 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="productProcess/bookRegisterForm.jsp">상품등록</a></li>
							<li><a href="productProcess/bookList.jsp?book_kind=all">상품수정/삭제</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 판매관리 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="orderedProduct/orderedList.jsp">판매리스트</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 배송관리 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="delivery/deliveryList.jsp">배송리스트</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 통계관리 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="statistics/monthStatsForm.jsp">월별판매리스트(꺽은선)</a></li>
							<li><a href="statistics/monthBarStatsForm.jsp">월별판매리스트(막대)</a></li>
							<li><a href="statistics/bookKindStatsForm.jsp">도서종류별 연간판매비율(도너츠)</a></li>
						</ul>
					</li>
				
					<li>
						<a href="logon/managerLogout.jsp">로그아웃</a>
					</li>
				
				</ul>
			
			</div>
		</div>
		
		
	</div>


</nav>





</body>
</html>















