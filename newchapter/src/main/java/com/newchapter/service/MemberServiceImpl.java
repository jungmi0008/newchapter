package com.newchapter.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Transactional
	@Override
	public int addCart(CartVO vo) {
		//이미 장바구니에 같은 책이 있는 경우
		int cartCnt = mapper.checkCart(vo);
		log.info(mapper.checkCart(vo));
		if(cartCnt == 1) {
			log.info("이미 책이 존재");
			return mapper.updateCartCnt(vo);
		}
		//해당 책이 장바구니에 처음으로 담겨지는 경우
		return mapper.insertCart(vo);
	}

	@Override
	public List<ProductVO> getCartInfo(String m_id) {
		// TODO Auto-generated method stub
		return mapper.getCartInfo(m_id);
	}

	@Override
	public int updateCartCnt(CartVO vo) {
		// TODO Auto-generated method stub
		return mapper.updateCart(vo);
	}

}
