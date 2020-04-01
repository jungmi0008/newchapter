package com.newchapter.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.newchapter.domain.MemberVO;
import com.newchapter.mapper.MemberMapper;
import com.newchapter.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Setter(onMethod_ = { @Autowired })
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		// userName means userid
		MemberVO vo = memberMapper.read(userName);

		return vo == null ? null : new CustomUser(vo);
	} 

}
