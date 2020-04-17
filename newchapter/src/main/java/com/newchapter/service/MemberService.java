package com.newchapter.service;

import java.util.List;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.MemberVO;
import com.newchapter.domain.ProductVO;

public interface MemberService {

	//장바구니에 추가하는 로직
	public int addCart(CartVO vo);

	//장바구니 페이지를 열 때 해당 회원의 장바구니 정보
	public List<ProductVO> getCartInfo(String m_id);

	//장바구니에 있는 책의 수량을 바꾸는 로직
	public int updateBookCnt(CartVO cart);

	//장바구니에 있는 책을 없애는 로직
	public int deleteBook(CartVO cart);

	//주문하기 페이지로 넘어갔을 때 폼에 들어갈 회원의 정보
	public MemberVO getMemberInfo(String m_id);
	
}
