package com.newchapter.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class QuestionVO {
	
	private int 	pno;			//상품번호
	private String 	m_id;			//상품문의 작성자 아이디
	
	private int 	qno;			//상품문의 번호
	private String 	q_title;		//상품문의 제목
	private String 	q_content;		//상품문의 내용
	private Date 	q_regdate;		//상품문의 등록일
	private Date 	q_update_date;	//상품문의 수정일		

}
