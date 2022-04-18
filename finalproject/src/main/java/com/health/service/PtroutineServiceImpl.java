package com.health.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.health.dao.PtroutineDAO;
import com.health.dto.PtroutineDTO;


@Service("ptroutineservice")
public class PtroutineServiceImpl implements PtroutineService {
	@Autowired
	@Qualifier("ptroutinedao")
	PtroutineDAO dao;
	
	public int insertptroutine(PtroutineDTO dto) {
		return dao.insertptroutine(dto);
	};
}
