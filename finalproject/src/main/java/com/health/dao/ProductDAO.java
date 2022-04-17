package com.health.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.health.dto.ProductDTO;

	@Repository
	@Mapper
	public interface ProductDAO {
		
		// 서비스 페이지 처리 총 상품 갯수 카운트
		
		public int selectProductCount(String search_text) throws Exception;
		
		// 카운트 된 개수로 페이지 처리 
		
		public List<ProductDTO> selectProductlist(int startrow, String search_text) throws Exception;

		// 상세정보 num 으로 상품 조회
		
		public ProductDTO product(int num)throws Exception;
		
		public List<ProductDTO> testlist(int pagenum, int contentnum);
		public int testcount();
	}

	