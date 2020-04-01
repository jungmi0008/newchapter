package com.newchapter.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler{
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		log.error("접근 제한 에러 페이지로 이동");
		
		String url = request.getRequestURL().toString();
		log.info("url : "+url);
		//멤버로 로그인하지 않은 경우
//		if(url.equals("http://localhost:8080/member")) {
//			response.sendRedirect("/customLogin");
//		} else {
		//관리자 페이지에 들어가려는 경우
		response.sendRedirect("/accessError");
//		}
	}
	
}
