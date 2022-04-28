package com.health.service;

import org.springframework.ui.Model;

import com.health.dto.ProductDTO;

public interface ProductService {
	
	
	// 상품 디테일 페이지 
	
	public ProductDTO getproduct(int num) throws Exception;

	public int execute(Model model,String pagenum, String contentnum)throws Exception;

	public int execute(Model model, String pagenum, String contentnum, String categorynum)throws Exception;

	
}

