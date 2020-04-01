package com.newchapter.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.newchapter.service.AdminService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@PreAuthorize("hasAnyRole('ROLE_ADMIN')")
@AllArgsConstructor
public class AdminController {

	private AdminService service;
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin() {
		log.info("admin 메인페이지 컨트롤러");
		
		return "/admin/adminMain";
	}
}
