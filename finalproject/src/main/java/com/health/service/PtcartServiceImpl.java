package com.health.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.health.dao.PtcartDAO;
import com.health.dto.PtcartDTO;


@Service("ptcartservice")
public class PtcartServiceImpl implements PtcartService {
	@Autowired
	@Qualifier("ptcartdao")
	PtcartDAO dao;

	@Override
	public int insertptcart(int pu_num, int et_num) {
		return dao.insertptcart(pu_num, et_num);
	}

	@Override
	public List<PtcartDTO> selectptcart(int pu_num) {
		return dao.selectptcart(pu_num);
	}
	
	@Override
	public int selectptcartcheck(int pu_num, int et_num) {
		return dao.selectptcartcheck(pu_num, et_num);
	}

	@Override
	public int deleteptcart(int pu_num) {
		return dao.deleteptcart(pu_num);
	}

	@Override
	public int deleteptcartone(int pu_num, int et_num) {
		return dao.deleteptcartone(pu_num, et_num);
	}

	
}
