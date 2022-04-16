package com.health.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.dto.MemberDto;

@Mapper
public interface MemberDAO {
	public List<MemberDto> Userlist();
	public MemberDto readUser(String m_mail);
	public List<String> readAuthority(String m_mail);
	public void createUser(MemberDto dto);
	public void createAuthority(MemberDto dto);
	public void deleteUser(String m_mail);
	public void deleteAuthority(String m_mail);	
}