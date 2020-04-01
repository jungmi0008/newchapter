package com.newchapter.domain;

import lombok.Data;

@Data
public class CartVO {
	
	private		String	m_id;			//구매자 아이디
	
	private		int		pno;			//장바구니에 담겨있는 책의 아이디
	private		String	p_title;		//장바구니에 담겨있는 책의 제목
	private		String	p_img;			//장바구니에 담겨있는 책의 이미지
	private		int		p_price;		//장바구니에 담겨있는 책의 정가
	private		int		p_dc_rate;		//장바구니에 담겨있는 책의 할인율
	
	private		int		cart_no;		//장바구니 아이디
	private		byte	cart_count;		//장바구니에 담겨있는 책의 수량(책당)
}
