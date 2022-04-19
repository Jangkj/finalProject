package com.health.service;

import java.util.Collection;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.health.dto.MemberDTO;


public interface MemberService extends UserDetailsService {
     Collection<GrantedAuthority> getAuthorities(String m_mail);
     public void createUser(MemberDTO dto);
     public void deleteUser(String m_mail);
     public PasswordEncoder passwordEncoder();
     public MemberDTO getInfo(String m_mail);
     public int checkEmail(String m_mail);
}