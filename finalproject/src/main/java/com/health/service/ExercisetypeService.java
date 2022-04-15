package com.health.service;

import java.util.List;

import com.health.dto.ExercisetypeDTO;


public interface ExercisetypeService {
	public int insertmember(ExercisetypeDTO dto);
	public int upatemember(ExercisetypeDTO dto);
	public int deletemember(String id);
	
	public List<ExercisetypeDTO> exercisetypelist();
	public List<ExercisetypeDTO> exercisetypelist(int page);	
	public List<ExercisetypeDTO>  exercisetypelist(String[] et_name);	
	public ExercisetypeDTO exercisetype(String et_name);
	
	
}
