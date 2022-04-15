package com.health.dao;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.health.dto.RoutineDTO;



@Mapper //sql매핑파일 id명 동일 메소드 실행 가능
@Repository("routinedao")
public interface RoutineDAO {
	public int insertroutine(RoutineDTO dto) ;
}

