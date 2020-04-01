package com.newchapter.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.newchapter.domain.MemberVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {

	private static final long serialVersionUID = 1L;

	private MemberVO member;

	public CustomUser(String m_id, String m_pw, 
			Collection<? extends GrantedAuthority> authorities) {
		super(m_id, m_pw, authorities);
	}

	public CustomUser(MemberVO vo) {

		super(vo.getM_id(), vo.getM_pw(), vo.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));

		this.member = vo;
	}
}
