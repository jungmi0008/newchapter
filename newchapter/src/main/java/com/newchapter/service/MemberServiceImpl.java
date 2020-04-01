package com.newchapter.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.ProductVO;
import com.newchapter.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	MemberMapper mapper;
	
	@Override
	public int addCart(CartVO vo) {
		// TODO Auto-generated method stub
		return mapper.addCart(vo);
	}

	@Override
	public List<ProductVO> getCartInfo(String m_id) {
		// TODO Auto-generated method stub
		return mapper.getCartInfo(m_id);
	}

	@Override
	public int updateCartCnt(CartVO cart) {
		// TODO Auto-generated method stub
		return mapper.updateCartCnt(cart);
	}
}
