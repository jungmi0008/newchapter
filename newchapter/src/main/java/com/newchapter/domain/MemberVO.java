package com.newchapter.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;


import lombok.Data;

@Data
public class MemberVO implements Serializable{
	
	private int		mno;			//회원 번호
	private String 	m_id;			//회원 아이디
	private String 	m_name;			//회원 이름
	private String 	m_email;		//회원 이메일
	private String 	m_img;			//회원 프로필 	(기본값 defualt.jpg)
	private String 	m_pw;			//회원 비밀번호
	private Date	m_birth;		//회원 생년월일
	private String	m_phone;		//회원 전화번호	(null가능)
	private String 	m_address;		//회원 주소
	private Date	m_signup_date;	//회원 가입일
	
	private List<AuthVO> authList;
}