<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니 확인하기</title>
</head>
<body>
    <p>성공적으로 장바구니에 담겼습니다!</p>
    <a href="/member/cart">장바구니 확인하기</a>
    <a href="javascript:closeWindow()">쇼핑 계속하기</a>
    <script language="javascript">
        function closeWindow() {
            self.close();
        }
    </script>
</body>

</html>