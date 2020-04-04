package com.newchapter.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.MemberVO;
import com.newchapter.domain.ProductVO;

@Mapper
public interface MemberMapper {

	public MemberVO read(String m_id);

	public int insertCart(CartVO vo);

	public List<ProductVO> getCartInfo(String m_id);

	public int updateCartCnt(CartVO vo);

	public int checkCart(CartVO vo);

	public int updateBookCnt(CartVO vo);
}
