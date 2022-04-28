package com.health.dao;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.health.dto.PtuserDTO;



@Mapper //sql매핑파일 id명 동일 메소드 실행 가능
@Repository("ptuserdao")
public interface PtuserDAO {
	public int insertptuser(PtuserDTO dto);
	public PtuserDTO ptuser(String m_mail);
	public int ptusercheck(String m_mail);
	public int updateuser(PtuserDTO dto);
	public int updatepoint(int pu_num);
	
}

