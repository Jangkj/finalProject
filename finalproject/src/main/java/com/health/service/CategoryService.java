package com.health.service;

import java.util.List;

import org.springframework.ui.Model;

import com.health.dto.AdminDTO;
import com.health.dto.CategoryDTO;

public interface CategoryService {
	
	public List<CategoryDTO> categorylist(); //매핑sql id 동일하지 않아도 된다

}
