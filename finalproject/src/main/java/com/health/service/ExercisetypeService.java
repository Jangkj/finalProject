package com.health.service;

import java.util.List;

import com.health.dto.ExercisetypeDTO;


public interface ExercisetypeService{
	public List<ExercisetypeDTO> exercisetypelist();
	public List<ExercisetypeDTO>  exercisetypelist(int [] et_num);
	public ExercisetypeDTO exercisetypename(String et_ename);
	public ExercisetypeDTO exercisetypenum(int et_num);
	
	
}
