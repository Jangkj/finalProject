package com.health.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.MemberDao;
import com.health.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao userMapper;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();	

	@Override
	public UserDetails loadUserByUsername(String m_mail) throws UsernameNotFoundException { //principal 객체 - 로그아웃성공시 제거됨
		MemberDto user = userMapper.readUser(m_mail);
		if(user==null) {
			throw new UsernameNotFoundException(m_mail);
		}
		user.setAuthorities(getAuthorities(m_mail));
		return user;
	}
	
	public Collection<GrantedAuthority> getAuthorities(String m_mail) {
        List<String> string_authorities = userMapper.readAuthority(m_mail);
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for (String authority : string_authorities) {
             authorities.add(new SimpleGrantedAuthority(authority));
        }
        return authorities;
   }

	@Override
	public void createUser(MemberDto dto) {
		String rawPassword = dto.getPassword();
		String encodedPassword = new BCryptPasswordEncoder().encode(rawPassword);
		dto.setPassword(encodedPassword);
		userMapper.createUser(dto);
		userMapper.createAuthority(dto);
	}

	@Override
	public void deleteUser(String m_mail) {
		userMapper.deleteUser(m_mail);
		userMapper.deleteAuthority(m_mail);
	}

	@Override
	public PasswordEncoder passwordEncoder() {
		return this.passwordEncoder;
	}

	
	
}
