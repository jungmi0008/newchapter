<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="include/header.jsp"></jsp:include>
<div class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <span class="icon-cancel_circle display-3 text-success"></span>
                <h2 class="display-3 text-black"><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}"/></h2>
                <p class="lead mb-5"><c:out value="${msg}"/></p>
                <p><a href="home.jsp" class="btn btn-sm btn-primary">홈으로 가기</a></p>
            </div>
        </div>
    </div>
</div>
<jsp:include page="include/footer.jsp"></jsp:include>