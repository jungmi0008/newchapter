/**
 * 
 */
$(document).ready(function(){
		
		var bookTypeStr = $("#bookTypeP").text();		
		var orderType = $("#orderTypeP").text();
		
		if(orderType == '' || orderType == null) {
			$("#dropdownMenuOffset").text("");
			$("#dropdownMenuOffset").append('정렬하기');
		} else if(orderType == 'orderType1') {
			$("#dropdownMenuOffset").text("");
			$("#dropdownMenuOffset").append('최신순');
		} else if(orderType == 'orderType2') {
			$("#dropdownMenuOffset").text("");
			$("#dropdownMenuOffset").append('판매순');
		} else if(orderType == 'orderType3') {
			$("#dropdownMenuOffset").text("");
			$("#dropdownMenuOffset").append('리뷰순');
		}
		
		if(bookTypeStr == '' || bookTypeStr == null) {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><strong class="text-black">국내도서</strong>');
		
		//전체보기
		} else if(bookTypeStr == 'allNovel') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">소설전체</strong>');
		} else if(bookTypeStr == 'allEssay') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">시<span class="dot">·</span>에세이 전체</strong>');
		} else if(bookTypeStr == 'allEconomy') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">경제<span class="dot">·</span>경영 전체</strong>');
		} else if(bookTypeStr == 'allSelfDev') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">자기계발 전체</strong>');
		} else if(bookTypeStr == 'allLibral') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">인문 전체</strong>');
		} else if(bookTypeStr == 'allHistory') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">역사<span class="dot">·</span>문화 전체</strong>');
		} else if(bookTypeStr == 'allReligion') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">종교 전체</strong>');
		} else if(bookTypeStr == 'allPolitics') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">정치<span class="dot">·</span>사회 전체</strong>');
		} else if(bookTypeStr == 'allArt') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">예술<span class="dot">·</span>대중문화 전체</strong>');
		} else if(bookTypeStr == 'allScience') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">과학 전체</strong>');
		} else if(bookTypeStr == 'allTechnology') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">기술<span class="dot">·</span>공학 전체</strong>');
		} else if(bookTypeStr == 'allComputer') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a><span class="mx-2 mb-0">/</span><strong class="text-black">컴퓨터<span class="dot">·</span>IT 전체</strong>');
		
		//-----------------------------------------------------------------------------------------------------------------------------
		//소설
		} else if(bookTypeStr == 'no-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allNovel" class="bookCategory">소설 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">한국소설</strong>');
		} else if(bookTypeStr == 'no-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allNovel" class="bookCategory">소설 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">영미소설</strong>');
		} else if(bookTypeStr == 'no-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allNovel" class="bookCategory">소설 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">일본소설</strong>');
		} else if(bookTypeStr == 'no-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allNovel" class="bookCategory">소설 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">러시아소설</strong>');
		} else if(bookTypeStr == 'no-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allNovel" class="bookCategory">소설 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">프랑스소설</strong>');
		} else if(bookTypeStr == 'no-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allNovel" class="bookCategory">소설 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">독일소설</strong>');
		
		//-----------------------------------------------------------------------------------------------------------------------------
		// 시/에세이
		} else if(bookTypeStr == 'es-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allEssay" class="bookCategory"">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">한국시</strong>');
		} else if(bookTypeStr == 'es-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allEssay" class="bookCategory"">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">해외시</strong>');
		} else if(bookTypeStr == 'es-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allEssay" class="bookCategory"">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">테마에세이</strong>');
		} else if(bookTypeStr == 'es-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allEssay" class="bookCategory"">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">나라별 에세이</strong>');
		} else if(bookTypeStr == 'es-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allEssay" class="bookCategory"">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">인물<span class="dot">·</span>자전적 에세이</strong>');
		} else if(bookTypeStr == 'es-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0 ">/</span><a href="allEssay" class="bookCategory"">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">청소년 시<span class="dot">·</span>에세이</strong>');
		} else if(bookTypeStr == 'es-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEssay" class="bookCategory">시<span class="dot">·</span>에세이 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">시<span class="dot">·</span>에세이 문고</strong>');
		
		//-----------------------------------------------------------------------------------------------------------------------------
		//경제/경영
		} else if(bookTypeStr == 'ec-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경영일반</strong>');
		} else if(bookTypeStr == 'ec-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경영이론</strong>');
		} else if(bookTypeStr == 'ec-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경영관리</strong>');
		} else if(bookTypeStr == 'ec-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경영전략</strong>');
		} else if(bookTypeStr == 'ec-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경제일반</strong>');
		} else if(bookTypeStr == 'ec-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경제이론</strong>');
		} else if(bookTypeStr == 'ec-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경제실무</strong>');
		} else if(bookTypeStr == 'ec-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">각국경제</strong>');
		} else if(bookTypeStr == 'ec-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">세무<span class="dot">·</span>회계</strong>');
		} else if(bookTypeStr == 'ec-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">마케팅<span class="dot">·</span>광고<span class="dot">·</span>고객</strong>');
		} else if(bookTypeStr == 'ec-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">유통<span class="dot">·</span>창업</strong>');
		} else if(bookTypeStr == 'ec-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">제테크<span class="dot">·</span>금융</strong>');
		} else if(bookTypeStr == 'ec-013') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">무역<span class="dot">·</span>운송</strong>');
		} else if(bookTypeStr == 'ec-014') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">관광<span class="dot">·</span>호텔</strong>');
		} else if(bookTypeStr == 'ec-015') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">경제<span class="dot">·</span>경영문고</strong>');
		} else if(bookTypeStr == 'ec-016') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allEconomy" class="bookCategory">경영<span class="dot">·</span>경영 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		
		//-----------------------------------------------------------------------------------------------------------------------------
		//자기계발
		} else if(bookTypeStr == 'se-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">성공<span class="dot">·</span>처세</strong>');
		} else if(bookTypeStr == 'se-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">자기능력계발</strong>');
		} else if(bookTypeStr == 'se-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">비지니스능력계발</strong>');
		} else if(bookTypeStr == 'se-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">인간관계</strong>');
		} else if(bookTypeStr == 'se-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">화술<span class="dot">·</span>현상</strong>');
		} else if(bookTypeStr == 'se-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">청소년자기계발</strong>');
		} else if(bookTypeStr == 'se-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">오디오북</strong>');
		} else if(bookTypeStr == 'se-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allSelfDev" class="bookCategory">자기<span class="dot">·</span>계발 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">전자책단말기</strong>');
		
		//-----------------------------------------------------------------------------------------------------------------------------
		//인문
		} else if(bookTypeStr == 'li-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">인문학일반</strong>');
		} else if(bookTypeStr == 'li-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">심리학</strong>');
		} else if(bookTypeStr == 'li-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">교육학</strong>');
		} else if(bookTypeStr == 'li-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">유아교율</strong>');
		} else if(bookTypeStr == 'li-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">특수교육</strong>');
		} else if(bookTypeStr == 'li-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">임용고시</strong>');
		} else if(bookTypeStr == 'li-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">철학</strong>');
		} else if(bookTypeStr == 'li-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">문학이론</strong>');
		} else if(bookTypeStr == 'li-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">한국문학론</strong>');
		} else if(bookTypeStr == 'li-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">영미문학론</strong>');
		} else if(bookTypeStr == 'li-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">중국문학론</strong>');
		} else if(bookTypeStr == 'li-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">세계문학론</strong>');
		} else if(bookTypeStr == 'li-013') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">언어학</strong>');
		} else if(bookTypeStr == 'li-014') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">독서<span class="dot">·</span>글쓰기</strong>');
		} else if(bookTypeStr == 'li-015') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">문헌정보학</strong>');
		} else if(bookTypeStr == 'li-016') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">역학<span class="dot">·</span>사주</strong>');
		} else if(bookTypeStr == 'li-017') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		} else if(bookTypeStr == 'li-018') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">방송통신대교재</strong>');
		} else if(bookTypeStr == 'li-019') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">인문교양총서</strong>');
		} else if(bookTypeStr == 'li-020') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allLibral" class="bookCategory">인문 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">인문고전총서</strong>');
		
		//-----------------------------------------------------------------------------------------------------------------------------
		//역사/문화
		} else if(bookTypeStr == 'hi-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">영사일반</strong>');
		} else if(bookTypeStr == 'hi-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">세계사</strong>');
		} else if(bookTypeStr == 'hi-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">서양사</strong>');
		} else if(bookTypeStr == 'hi-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">동양사</strong>');
		} else if(bookTypeStr == 'hi-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">한국사</strong>');
		} else if(bookTypeStr == 'hi-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">신화</strong>');
		} else if(bookTypeStr == 'hi-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">민속학</strong>');
		} else if(bookTypeStr == 'hi-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">문화일반</strong>');
		} else if(bookTypeStr == 'hi-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">문화사</strong>');
		} else if(bookTypeStr == 'hi-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">역사인물</strong>');
		} else if(bookTypeStr == 'hi-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">역사기행</strong>');
		} else if(bookTypeStr == 'hi-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">청소년 역사</strong>');
		} else if(bookTypeStr == 'hi-013') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">지리학</strong>');
		} else if(bookTypeStr == 'hi-014') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allHistory" class="bookCategory">역사<span class="dot">·</span>문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		
		//----------------------------------------------------------------------------------------------------------------------
		//종교
		} else if(bookTypeStr == 're-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allReligion" class="bookCategory">종교 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">종교일반</strong>');
		} else if(bookTypeStr == 're-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allReligion" class="bookCategory">종교 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">기독교(개신교)</strong>');
		} else if(bookTypeStr == 're-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allReligion" class="bookCategory">종교 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">가톨릭</strong>');
		} else if(bookTypeStr == 're-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allReligion" class="bookCategory">종교 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">불교</strong>');
		} else if(bookTypeStr == 're-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allReligion" class="bookCategory">종교 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">그외종교</strong>');
		} else if(bookTypeStr == 're-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allReligion" class="bookCategory">종교 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">CD<span class="dot">·</span>TAPE<span class="dot">·</span>악보</strong>');
		
		//----------------------------------------------------------------------------------------------------------------------
		//정치/사회
		} else if(bookTypeStr == 'po-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">정치<span class="dot">·</span>외교</strong>');
		} else if(bookTypeStr == 'po-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">행정<span class="dot">·</span>정책</strong>');
		} else if(bookTypeStr == 'po-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">국방<span class="dot">·</span>군사</strong>');
		} else if(bookTypeStr == 'po-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">법학</strong>');
		} else if(bookTypeStr == 'po-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">사회학</strong>');
		} else if(bookTypeStr == 'po-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">사회문제<span class="dot">·</span>복지</strong>');
		} else if(bookTypeStr == 'po-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">언론<span class="dot">·</span>신문<span class="dot">·</span>방송</strong>');
		} else if(bookTypeStr == 'po-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">정치<span class="dot">·</span>사회문고</strong>');
		} else if(bookTypeStr == 'po-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		} else if(bookTypeStr == 'po-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allPolitics" class="bookCategory">정치<span class="dot">·</span>사회 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">정부간행물</strong>');
			
		//----------------------------------------------------------------------------------------------------------------------
		//예술/대중문화
		} else if(bookTypeStr == 'ar-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">예술일반</strong>');
		} else if(bookTypeStr == 'ar-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">미술</strong>');
		} else if(bookTypeStr == 'ar-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">만화<span class="dot">·</span>애니메이션</strong>');
		} else if(bookTypeStr == 'ar-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">디자인<span class="dot">·</span>색체</strong>');
		} else if(bookTypeStr == 'ar-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">패션<span class="dot">·</span>의류</strong>');
		} else if(bookTypeStr == 'ar-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">음악</strong>');
		} else if(bookTypeStr == 'ar-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">사진<span class="dot">·</span>영상</strong>');
		} else if(bookTypeStr == 'ar-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">연극</strong>');
		} else if(bookTypeStr == 'ar-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">영화</strong>');
		} else if(bookTypeStr == 'ar-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">예술기행</strong>');
		} else if(bookTypeStr == 'ar-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">예술문고</strong>');
		} else if(bookTypeStr == 'ar-013') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">청소년예술</strong>');
		} else if(bookTypeStr == 'ar-014') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allArt" class="bookCategory">예술<span class="dot">·</span>대중문화 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
			
		//---------------------------------------------------------------------------------------------------------
		//과학
		} else if(bookTypeStr == 'sc-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">도감</strong>');
		} else if(bookTypeStr == 'sc-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">교양과학</strong>');
		} else if(bookTypeStr == 'sc-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">수학</strong>');
		} else if(bookTypeStr == 'sc-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">물리학</strong>');
		} else if(bookTypeStr == 'sc-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">화학</strong>');
		} else if(bookTypeStr == 'sc-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">생물학</strong>');
		} else if(bookTypeStr == 'sc-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">지구과학</strong>');
		} else if(bookTypeStr == 'sc-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">천문학</strong>');
		} else if(bookTypeStr == 'sc-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">청소년 교양과학</strong>');
		} else if(bookTypeStr == 'sc-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">과학문고</strong>');
		} else if(bookTypeStr == 'sc-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		} else if(bookTypeStr == 'sc-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allScience" class="bookCategory">과학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">초과학</strong>');
			
		//-------------------------------------------------------------------------------------------------------
		//기술/공학
		} else if(bookTypeStr == 'te-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">건축<span class="dot">·</span>인테리어</strong>');
		} else if(bookTypeStr == 'te-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">토목<span class="dot">·</span>건설</strong>');
		} else if(bookTypeStr == 'te-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">환경<span class="dot">·</span>소방<span class="dot">·</span>도시<span class="dot">·</span>조경</strong>');
		} else if(bookTypeStr == 'te-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">자동차<span class="dot">·</span>운전</strong>');
		} else if(bookTypeStr == 'te-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">운전면허</strong>');
		} else if(bookTypeStr == 'te-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">공학일반</strong>');
		} else if(bookTypeStr == 'te-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">금속<span class="dot">·</span>재료</strong>');
		} else if(bookTypeStr == 'te-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">기계<span class="dot">·</span>역학<span class="dot">·</span>항공</strong>');
		} else if(bookTypeStr == 'te-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">전기<span class="dot">·</span>전자</strong>');
		} else if(bookTypeStr == 'te-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">농수산<span class="dot">·</span>축산</strong>');
		} else if(bookTypeStr == 'te-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">생활과학</strong>');
		} else if(bookTypeStr == 'te-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">의학</strong>');
		} else if(bookTypeStr == 'te-013') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allTechnology" class="bookCategory">기술<span class="dot">·</span>공학 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		
		//------------------------------------------------------------------------------------------------------
		//컴퓨터/it
		} else if(bookTypeStr == 'co-001') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">컴퓨터공학</strong>');
		} else if(bookTypeStr == 'co-002') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">IT일반</strong>');
		} else if(bookTypeStr == 'co-003') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">컴퓨터입문<span class="dot">·</span>활용</strong>');
		} else if(bookTypeStr == 'co-004') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">전산통계<span class="dot">·</span>해석</strong>');
		} else if(bookTypeStr == 'co-005') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">OS</strong>');
		} else if(bookTypeStr == 'co-006') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">네트워크</strong>');
		} else if(bookTypeStr == 'co-007') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">보안<span class="dot">·</span>해킹</strong>');
		} else if(bookTypeStr == 'co-008') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">데이터베이스</strong>');
		} else if(bookTypeStr == 'co-009') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">개발방법론</strong>');
		} else if(bookTypeStr == 'co-010') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">게임</strong>');
		} else if(bookTypeStr == 'co-011') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">웹프로그래밍</strong>');
		} else if(bookTypeStr == 'co-012') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">프로그래밍<span class="dot">·</span>언어</strong>');
		} else if(bookTypeStr == 'co-013') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">모바일프로그래밍</strong>');
		} else if(bookTypeStr == 'co-014') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">OA<span class="dot">·</span>사무자동화</strong>');
		} else if(bookTypeStr == 'co-015') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">웹사이트</strong>');
		} else if(bookTypeStr == 'co-016') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">그래픽</strong>');
		} else if(bookTypeStr == 'co-017') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">멀티미디어</strong>');
		} else if(bookTypeStr == 'co-018') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">CAD</strong>');
		} else if(bookTypeStr == 'co-019') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">자격증<span class="dot">·</span>수험서</strong>');
		} else if(bookTypeStr == 'co-020') {
			$("#categoryDiv").text("");
			$("#categoryDiv").append('<a href="/">홈</a><span class="mx-2 mb-0">/</span><a href="/shop">국내도서</a>'
					+'<span class="mx-2 mb-0">/</span><a href="allComputer" class="bookCategory">컴퓨터<span class="dot">·</span>IT 전체</a>'
					+'<span class="mx-2 mb-0">/</span><strong class="text-black">대학교재</strong>');
		}
		
		/* shop.jsp */
		/* page 버튼 클릭시 이동 */
		var actionForm = $("#actionForm");
		$(".page_link").on("click", function(e){
			e.preventDefault();
			
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		/* side bar에서 책 종류 */
		$(".bookType").on("click", function(e){
			e.preventDefault();
			
			actionForm.find("input[name='bookType']").val($(this).attr("href"));
			actionForm.find("input[name='pageNum']").val("1");
			actionForm.find("input[name='orderType']").val(null);
			actionForm.submit();
		})
		/* 상단 페이지 depth에서 상위 페이지로 갈때 */
		$(".bookCategory").on("click", function(e){
			e.preventDefault();
			console.log($(this).attr("href"));
			
			actionForm.find("input[name='bookType']").val($(this).attr("href"));
			actionForm.find("input[name='pageNum']").val("1");
			actionForm.find("input[name='orderType']").val(null);
	 		actionForm.submit();
		})
		/* 정렬하기 */
		$(".orderType").on("click", function(e){
			e.preventDefault();
			
			actionForm.find("input[name='orderType']").val($(this).attr("href"));
			actionForm.find("input[name='pageNum']").val("1");
			actionForm.submit();
		})
		
	    /* 책 클릭시 상세페이지로 이동 */
		$(".move").on("click", function(e){
			e.preventDefault();
	
			actionForm.append("<input type='hidden' name='pno' value='"+$(this).attr("href")+"'>");
	
			actionForm.attr("action", "/shopSingle");
			actionForm.submit();
		});
	 
	});














