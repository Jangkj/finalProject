package com.health.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.health.dao.PtuserDAO;
import com.health.dto.PtuserDTO;


@Service("ptuserservice")
public class PtuserServiceImpl implements PtuserService {
	@Autowired
	@Qualifier("ptuserdao")
	PtuserDAO dao;
	
	
	public int insertptuser(PtuserDTO dto){
		return dao.insertptuser(dto);
	};
	
	public PtuserDTO ptuser(String m_mail){
		return dao.ptuser(m_mail);
	};
	
	public int ptusercheck(String m_mail) {
		return dao.ptusercheck(m_mail);
	};
	
	public int updateuser(PtuserDTO dto) {
		return dao.updateuser(dto);
	};
	
	public int updatepoint(int pu_num) {
		return dao.updatepoint(pu_num);
	};
}
