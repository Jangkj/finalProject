package com.health.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.dao.ProductDAO;
import com.health.dto.PageInfo;
import com.health.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO dao;
	
	// 페이지 처리 , 상품 리스트 출력
	
	@Override
	public List<ProductDTO> productlist(int page, PageInfo pageInfo, String search_text) throws Exception{
		int listCount=dao.selectProductCount(search_text);
		
		
		int maxPage=(int)Math.ceil((double)listCount/10);
	
		
	
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		
		
		int endPage=startPage+10-1;

		
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);

		
		int startrow=(page-1)*10+1;
		List<ProductDTO> productList = dao.selectProductlist(startrow,search_text);
		for (ProductDTO productDTO : productList) {
		}
		return productList;
	}
	
	// 상품 상세정보 조회 

	@Override
	public ProductDTO getproduct(int num) throws Exception {
		ProductDTO prod = dao.product(num);
		return prod;
	}


}
