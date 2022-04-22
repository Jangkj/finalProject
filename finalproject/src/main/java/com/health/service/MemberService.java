package com.health.service;

import java.security.Principal;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.health.dto.MemberDTO;


public interface MemberService extends UserDetailsService {
     Collection<GrantedAuthority> getAuthorities(String m_mail); //로그인시 권한 호출
     public void createUser(MemberDTO dto);
     public void deleteUser(String m_mail);
     public PasswordEncoder passwordEncoder();
     public MemberDTO getInfo(String m_mail);
     public int checkEmail(String m_mail);
     public String updateUser(Map<String, Object> param);
     
}

