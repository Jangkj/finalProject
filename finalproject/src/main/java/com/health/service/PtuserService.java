package com.health.service;


import com.health.dto.PtuserDTO;


public interface PtuserService{
	public int insertptuser(PtuserDTO dto);
	public PtuserDTO ptuser(String m_mail);
	public int ptusercheck(String m_mail);
	public int updateuser(PtuserDTO dto);
	public int updatepoint(int pu_num);
	
}
