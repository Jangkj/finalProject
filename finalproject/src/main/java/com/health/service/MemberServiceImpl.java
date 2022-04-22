package com.health.service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.health.dao.MemberDAO;
import com.health.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberdao;
	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();	
	
	


	@Override
	public UserDetails loadUserByUsername(String m_mail) throws UsernameNotFoundException { //principal 객체 - 로그아웃성공시 제거됨
		MemberDTO user = memberdao.readUser(m_mail);
		if(user==null) {
			throw new UsernameNotFoundException(m_mail);
		}
		user.setAuthorities(getAuthorities(m_mail));
		return user;
	}
	
	public Collection<GrantedAuthority> getAuthorities(String m_mail) {
        List<String> string_authorities = memberdao.readAuthority(m_mail);
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for (String authority : string_authorities) {
             authorities.add(new SimpleGrantedAuthority(authority));
        }
        return authorities;
   }

	@Override
	public void createUser(MemberDTO dto) {
		String rawPassword = dto.getPassword();
		String encodedPassword = new BCryptPasswordEncoder().encode(rawPassword);
		dto.setPassword(encodedPassword);
		memberdao.createUser(dto);
		memberdao.createAuthority(dto);
	}

	@Override
	public void deleteUser(String m_mail) {
		memberdao.deleteUser(m_mail);
		memberdao.deleteAuthority(m_mail);
	}

	@Override
	public PasswordEncoder passwordEncoder() {
		return this.passwordEncoder;
	}

	@Override
	public MemberDTO getInfo(String m_mail) {
		return memberdao.readUser(m_mail);		
	}

	// 이메일 중복체크
	public int checkEmail(String m_mail) {
		int result = memberdao.checkEmail(m_mail);
		return result;
	}

	@Override
	public String updateUser(Map<String, Object> param) {
		MemberDTO principal = (MemberDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();		
		
		if (!principal.getOld_pw().equals("")) {
			String oldPassword = principal.getOld_pw();
			String rawPassword = principal.getPassword();
			String encodedPassword = new BCryptPasswordEncoder().encode(rawPassword);
			oldPassword = new BCryptPasswordEncoder().encode(oldPassword);
			if (oldPassword.equals(principal.getPassword())) {
				principal.setPassword(encodedPassword);
			}else {
				return "기존 비밀번호가 틀렸습니다";
			}

		}else {
			principal.setPassword(principal.getPassword());			
		}
		
		memberdao.updateMember(param);
		return "성공";
	}	

	
	
}