package com.health.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.health.dto.PtcartDTO;



@Mapper //sql매핑파일 id명 동일 메소드 실행 가능
@Repository("ptcartdao")
public interface PtcartDAO {
	public int insertptcart(int pu_num, int et_num);
	public List<PtcartDTO> selectptcart(int pu_num);
	public int selectptcartcheck(int pu_num, int et_num);
	public int deleteptcart(int pu_num);
	public int deleteptcartone(int pu_num, int et_num);
}

