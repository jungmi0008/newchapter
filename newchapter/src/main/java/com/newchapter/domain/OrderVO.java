package com.newchapter.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderVO {
	
	private	String		m_id;			//구매자
	private	String		m_name;			//배송받는 사람
	private	String		m_phone;		//배송지 전화번호
	
	private	int			pno;			//구매한 책 아이디
	private	String		p_title;		//구매한 책 제목
	private	String		p_img;			//책이미지
	
	private	int			cart_price;		//할인까지 들어간 구매가
	
	private	int			ono;			//구매 아이디
	private	byte		o_count;		//구매수량
	private	Date		o_date;			//구매일자
	private	String		o_account;		//결재계좌
	private	String		o_address;		//배송지주소
	private	String		o_sanction;		//배송상황
}
