package com.newchapter.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductVO {
	
	private	int			pno;				//책의 id
	private	String		p_kind;				//책의 종류
	private	String		p_title;			//책의 제목
	private	int			p_price;			//책의 가격
	private	short		p_count;			//책의 재고 수량
	private	String		p_author;			//저자
	
	private	String		p_publish_company;	//출판사
	private	Date		p_publish_date;		//출판일
	private	String		p_img;				//책의 이미지명
	private	String		p_thumbnail;		//책의 이미지 섬네일
	private	String		p_introduction;		//책의 내용
	private	short		p_dc_rate;			//책의 할인율
	private	Date		p_regdate;			//책의 등록일자.
	private	int			p_sales;			//책의 판매량
	private	int			p_commentCnt;		//책의 리뷰 개수
	
	private int			cart_count;			//book에 담아서 카트에서 보여주기 위함
}
