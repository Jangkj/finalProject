package com.health.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.health.dto.ExercisetypeDTO;


@Mapper //sql매핑파일 id명 동일 메소드 실행 가능
@Repository("exercisetypedao")
public interface ExercisetypeDAO {
	public int insertexercisetype(ExercisetypeDTO dto) ;
	public int updateexercisetype(ExercisetypeDTO dto) ;
	public int deleteexercisetype(String et_ename) ;
	public List<ExercisetypeDTO> exercisetypelist();
	public List<ExercisetypeDTO> exercisetypepaginglist(int[] limit);
	public List<ExercisetypeDTO> exercisetyperesssearch(String[] et_ename);
	public ExercisetypeDTO exercisetype(String et_ename);
}

