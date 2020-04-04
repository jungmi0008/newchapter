package com.newchapter.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.MemberVO;
import com.newchapter.domain.ProductVO;
import com.newchapter.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class MemberController {

	private MemberService service;

	@GetMapping("/member")
	@PreAuthorize("isAuthenticated()")
	public String home() {

		return "redirect:/";
	}

	@GetMapping("/member/cart")
	@PreAuthorize("isAuthenticated()")
	public void cart(Principal principal, Model model) {
		List<ProductVO> bookListForCart = new ArrayList<ProductVO>();

		String m_id = principal.getName();
		bookListForCart = (List<ProductVO>) service.getCartInfo(m_id);

//		bookListForCart.forEach(book -> log.info(book));

		model.addAttribute("bookListForCart", bookListForCart);
	}
	
	@GetMapping("/member/checkout")
	@PreAuthorize("isAuthenticated()")
	public String checkout() {
		//해당 로그인 아이디의 카트 내용물 모두와 해당 아이디의 주소
		return "member/checkout";
	}
	
	@GetMapping("/member/orderList")
	@PreAuthorize("isAuthenticated()")
	public String orderList() {
		return "member/orderList";
	}
	@GetMapping("/member/myComment")
	@PreAuthorize("isAuthenticated()")
	public String myComment() {
		return "member/myComment";
	}
	
	@GetMapping("/member/myDetail")
	@PreAuthorize("isAuthenticated()")
	public String myDetail() {
		return "member/myDetail";
	}
	
	@GetMapping("/member/myPage")
	@PreAuthorize("isAuthenticated()")
	public String myPage() {
		return "member/myPage";
	}
	
	@GetMapping("/member/myQuestion")
	@PreAuthorize("isAuthenticated()")
	public String myQuestion() {
		return "member/myQuestion";
	}

	// 장바구니 추가
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/cart/add", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> addCart(@RequestBody CartVO vo) {
		log.info("addCart시작");
		int changeRows = service.addCart(vo);
		return changeRows >= 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	
	 // 장바구니 상품개수 변경
	@PreAuthorize("isAuthenticated()")
	 @PostMapping(value = "/cart/updateBookCnt", consumes = "application/json",produces = {MediaType.TEXT_PLAIN_VALUE})
	 public ResponseEntity<String> updateBookCnt(@RequestBody CartVO cart){
		
		 int changeRows = service.updateBookCnt(cart);
		 return changeRows == 1 ? 
				 new ResponseEntity<>("success", HttpStatus.OK) : 
				 new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	 
}
