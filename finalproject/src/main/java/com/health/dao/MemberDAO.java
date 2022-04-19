package com.health.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.dto.MemberDTO;

@Mapper
public interface MemberDAO {
	public List<MemberDTO> Userlist();
	public MemberDTO readUser(String m_mail);
	public List<String> readAuthority(String m_mail);
	public void createUser(MemberDTO dto);
	public void createAuthority(MemberDTO dto);
	public void deleteUser(String m_mail);
	public void deleteAuthority(String m_mail);
	public int checkEmail(String m_mail);
}