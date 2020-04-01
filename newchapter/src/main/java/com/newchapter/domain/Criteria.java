package com.newchapter.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int 	pageNum;
	private int 	amount;
	
	private String 	bookType;
	private String  orderType;
	private String 	keyword;
	
	public Criteria() {
		this(1,12);	//페이지당 21개의 게시물
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
//	public String[] getTypeArr() {
//		return bookType == null? new String[] {} : bookType.split("");
//	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("bookType", this.getBookType())
				.queryParam("orderType", this.getOrderType())
				.queryParam("keyword", this.getKeyword());
		
		return builder.toUriString();
	}
	
}
