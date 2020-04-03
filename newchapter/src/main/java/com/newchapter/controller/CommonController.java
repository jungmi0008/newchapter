package com.newchapter.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.newchapter.domain.Criteria;
import com.newchapter.domain.PageDTO;
import com.newchapter.service.CommonService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CommonController {
	
	CommonService service;
	
	//home.jsp의 신간 목록 부분
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		log.info("신간 목록 컨트롤러");
		
		model.addAttribute("newBookList", service.getNewBookList());

		return "home";
	}
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("접근 제한 에러 컨트롤러 시작");
		model.addAttribute("msg", "접근 권한이 존재하지 않습니다");
	}
	
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {
		log.info("error : "+error+"/logout : "+logout);
		
		if(error != null) {
			model.addAttribute("error","아이디 또는 비밀번호가 틀렸습니다. 다시 시도해 주세요");
		}
		
		if(logout!=null) {
			model.addAttribute("logout","로그아웃 되었습니다");
		}
		
	}
	
	@PostMapping("/customLogout")
	public void logoutPost() {
		log.info("로그아웃 처리");
	}
	
	@GetMapping("/shop")
	public void shop(Criteria cri, Model model) {
		log.info("쇼핑 페이지 컨트롤러");
		model.addAttribute("bookList", service.getBookList(cri));
		
		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("bookType",cri.getBookType());
		model.addAttribute("total", total);
	}
	
	@GetMapping("/shopSingle")
	public void shopSingle(@RequestParam("pno")int pno, Model model) {
		log.info("쇼핑 싱글 페이지 컨트롤러");
		model.addAttribute("bookSingle", service.getbookSingle(pno));
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp() {
		log.info("회원가입 페이지 컨트롤러");
		return "signUp";
	}
	
	

	
}
