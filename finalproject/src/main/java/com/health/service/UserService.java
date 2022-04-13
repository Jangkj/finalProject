package com.health.service;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.health.domain.User;

public interface UserService extends UserDetailsService {
     Collection<GrantedAuthority> getAuthorities(String m_mail);
     public void createUser(User user);
     public void deleteUser(String m_mail);
     public PasswordEncoder passwordEncoder();
}