package com.health.service;

import java.util.List;

import com.health.dto.PtcartDTO;

public interface PtcartService{
	public int insertptcart(int pu_num, int et_num);
	public List<PtcartDTO> selectptcart(int pu_num);
	public int selectptcartcheck(int pu_num, int et_num);
	public int deleteptcart(int pu_num);
	public int deleteptcartone(int pu_num, int et_num);
}
