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

//	@GetMapping("/cart")
//	public void cart(HttpServletRequest request, Model model) {
//		List<ProductVO> bookListForCart = new ArrayList<ProductVO>();
//		
//		HttpSession session = request.getSession();
//		Enumeration<String> sessionAttr = session.getAttributeNames();
//		
//		while(sessionAttr.hasMoreElements()) {
//			String sessionName = sessionAttr.nextElement().toString();
//			if(sessionName.startsWith("bookInCart:")) {
//				int pno = Integer.parseInt(sessionName.substring(11));
//				ProductVO book = service.getbookSingle(pno);
//				
//				int cart_count = (int)session.getAttribute(sessionName.substring(11));
//				book.setCart_count(cart_count);
//				
//				bookListForCart.add(book);
//			}
//		}
//		model.addAllAttributes(bookListForCart);
//	}

	@GetMapping("/member/cart")
	@PreAuthorize("isAuthenticated()")
	public void cart(Principal principal, Model model) {
		List<ProductVO> bookListForCart = new ArrayList<ProductVO>();

		String m_id = principal.getName();
		bookListForCart = (List<ProductVO>) service.getCartInfo(m_id);

//		bookListForCart.forEach(book -> log.info(book));

		model.addAttribute("bookListForCart", bookListForCart);
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

	
	 //댓글 추가
	@PreAuthorize("isAuthenticated()")
	 @PostMapping(value = "/cart/updateCnt", consumes = "application/json",produces = {MediaType.TEXT_PLAIN_VALUE})
	 public ResponseEntity<String> updateCartCnt(@RequestBody CartVO cart){ 
		 int changeRows = service.updateCartCnt(cart);
		 return changeRows == 1 ? 
				 new ResponseEntity<>("success", HttpStatus.OK) : 
				 new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	 
}
