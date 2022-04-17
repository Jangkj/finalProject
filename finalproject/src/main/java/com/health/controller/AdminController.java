package com.health.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.health.dto.AdminDTO;
import com.health.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	@Qualifier("adminservice")
	AdminService service;
	
	@RequestMapping("/main_admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main_admin");
		return mv;
	}
	
	@RequestMapping(value="/admininsert", method=RequestMethod.GET)
	public String insertform() {
		return "admin/insertform";
	}
	@RequestMapping(value="/admininsert", method=RequestMethod.POST)
	public ModelAndView insertresult(@ModelAttribute AdminDTO adto) throws IOException {
		MultipartFile mf1 = adto.getProd_img();
		
		String savePath = "c:/upload/";
		if(!mf1.isEmpty()) {
			String originname1 = mf1.getOriginalFilename();
			String beforeext1 = originname1.substring(0, originname1.indexOf("."));
			String ext1 = originname1.substring(originname1.indexOf("."));
			File serverfile1 = new File(savePath + beforeext1+"("+UUID.randomUUID().toString()+")"+ext1); 
			mf1.transferTo(serverfile1);
			adto.setProd_img_name(savePath + beforeext1+"("+UUID.randomUUID().toString()+")"+ext1);
		}
		
		int result = service.insertProduct(adto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("admin/insertresult");
		return mv;
	}
//	@RequestMapping(value="/adminselect", method=RequestMethod.GET)
//	public String selectform() {
//		return "admin/selectform";
//	}
	
	@RequestMapping("/productlist")
	public ModelAndView productlist(){
		ModelAndView mv= new ModelAndView();
		List<AdminDTO> list = service.productlist();
		mv.addObject("productlist", list);
//		mv.setViewName("admin/productlist");
		mv.setViewName("admin/selectform");
		return mv;
		//전체목록 = model
	}
	
	@RequestMapping("/product")
	public ModelAndView product(int code){
		ModelAndView mv= new ModelAndView();
		AdminDTO adto = service.product(code);
		mv.addObject("admindto", adto);
		mv.setViewName("admin/product");
		return mv;		
	}
//	@RequestMapping(value="/tables")
//	public String tables(Model model,@RequestParam(defaultValue = "1") String pagenum,@RequestParam(defaultValue = "10") String contentnum) throws Exception{
//		service.execute(model, pagenum, contentnum);
//		return "/tables";
//	}
	@RequestMapping(value="/adminselect")
	public ModelAndView adminselect(Model model,@RequestParam(defaultValue = "1") String pagenum,@RequestParam(defaultValue = "10") String contentnum) throws Exception{
		ModelAndView mv= new ModelAndView();
		service.execute(model, pagenum, contentnum);
		mv.setViewName("admin/adminselect");
		return mv;
	}
}
