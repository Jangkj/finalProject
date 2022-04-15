package com.health.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.health.dao.RoutineDAO;
import com.health.dto.RoutineDTO;


@Service("routineservice")
//@Service("memberServiceImpl")
public class RoutineImpl implements RoutineService{
	@Autowired
	@Qualifier("routinedao")
	RoutineDAO dao;

	@Override
	public int insertroutine(RoutineDTO dto) {
		return dao.insertroutine(dto);
	}

}
