package com.health.service;

import java.util.List;

import com.health.dto.PageInfo;
import com.health.dto.ProductDTO;

public interface ProductService {
	
	// 페이지 , 정보 처리  
	
	public List<ProductDTO> productlist(int page, PageInfo pageInfo, String search_text)throws Exception; 
	
	// 상품 디테일 페이지 
	
	public ProductDTO getproduct(int num) throws Exception;
	
}

