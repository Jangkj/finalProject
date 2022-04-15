package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.health.dao.ExercisetypeDAO;
import com.health.dto.ExercisetypeDTO;


@Service("exercisetypeservice")
//@Service("memberServiceImpl")
public class ExercisetypeImpl implements ExercisetypeService {
	@Autowired
	@Qualifier("exercisetypedao")
	ExercisetypeDAO dao;

	@Override
	public int insertmember(ExercisetypeDTO dto) {
		return dao.insertexercisetype(dto);
	}

	@Override
	public int upatemember(ExercisetypeDTO dto) {
		return  dao.updateexercisetype(dto);
	}

	@Override
	public int deletemember(String et_name) {
		return dao.deleteexercisetype(et_name);
	}

	@Override
	public List<ExercisetypeDTO>  exercisetypelist() {
		return dao.exercisetypelist();
	}

	@Override
	public List<ExercisetypeDTO>  exercisetypelist(int page) {
		int limit[]= new int[2];
		limit[0] = (page-1) * 5;
		limit[1] = 5;
		return dao.exercisetypepaginglist(limit);
	}

	@Override
	public List<ExercisetypeDTO>  exercisetypelist(String[] et_name) {
		return dao.exercisetyperesssearch(et_name);
	}

	@Override
	public ExercisetypeDTO exercisetype(String et_name) {
		return dao.exercisetype(et_name);
	}	
	
}
