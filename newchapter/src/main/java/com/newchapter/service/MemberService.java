package com.newchapter.service;

import java.util.List;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.ProductVO;

public interface MemberService {


	public int addCart(CartVO vo);

	public List<ProductVO> getCartInfo(String m_id);

	public int updateBookCnt(CartVO cart);
	
}
