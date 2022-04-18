package com.health.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.health.dto.AdminDTO;
import com.health.dto.CategoryDTO;
import com.health.dto.ProductDTO;

@Mapper
@Repository("categorydao") 
public interface CategoryDAO {
	public List<CategoryDTO> categorylist();

	
	
	public List<ProductDTO> testlist(int pagenum, int contentnum);
	public int testcount();
	
}
