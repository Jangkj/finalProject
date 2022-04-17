package com.health.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.health.dto.PageInfo;
import com.health.dto.ProductDTO;
import com.health.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	
	// 상품목록 페이지 처리 

//	@GetMapping("/list")
//	public ModelAndView productlist(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
//			@RequestParam(value = "search_text", defaultValue = "") String search_text) {
//		ModelAndView mv = new ModelAndView();
//		List<ProductDTO> list;
//		PageInfo pageInfo = new PageInfo();
//		try {
//			list = service.productlist(page, pageInfo, search_text);
//			mv.addObject("search_text", search_text);
//			mv.addObject("pageInfo", pageInfo);
//			mv.addObject("productlist", list);
//			mv.setViewName("/productlist");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return mv;
//	}
	
//	@RequestMapping(value="/tables")
//	public String tables(Model model,@RequestParam(defaultValue = "1") String pagenum,@RequestParam(defaultValue = "10") String contentnum) throws Exception{
//		service.execute(model, pagenum, contentnum);
//		return "tables";
//	}

	// 상세정보 페이지 
	
	@GetMapping(value="productdetail") 
	public ModelAndView productdetail(@RequestParam (value = "num") int num ) {
		ModelAndView mv = new ModelAndView();
		try {
			ProductDTO prod = service.getproduct(num);
			mv.addObject("prod", prod);
			mv.setViewName("/productdetail");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return  mv;
	}
}

//	 @GetMapping(value="login") public String login() { return "/login"; }
//}
