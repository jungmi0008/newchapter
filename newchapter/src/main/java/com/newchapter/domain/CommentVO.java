package com.newchapter.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CommentVO {
	
	private int 	pno;			//상품번호
	private String 	m_id;			//상품평 작성자 아이디
	
	private int 	cno;			//상품평 번호
	private String 	c_title;		//상품평 제목
	private String 	c_content;		//상품평 내용
	private Date 	c_regdate;		//상품평 등록일
	private Date 	c_update_date;	//상품평 수정일
}
