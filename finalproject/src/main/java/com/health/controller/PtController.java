package com.health.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.health.dto.ExercisetypeDTO;
import com.health.dto.PtcartDTO;
import com.health.service.ExercisetypeService;
import com.health.service.PtcartService;


@Controller
public class PtController {
	@Autowired
	@Qualifier("exercisetypeservice")
	ExercisetypeService exercisetypeservice;
	
	@Autowired
	@Qualifier("ptcartservice")
	PtcartService ptcartservice;

	@RequestMapping(value="/exerciselist", method = RequestMethod.GET)
	public ModelAndView ptlist() {
		ModelAndView mv = new ModelAndView();
		List<ExercisetypeDTO> list = exercisetypeservice.exercisetypelist();
		mv.addObject("exercisetypelist", list);
		mv.setViewName("ptservice/exercisetypelist");
		return mv;
	}
		
	@RequestMapping(value = "/exerciselist", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	@ResponseBody
	public List<ExercisetypeDTO> ptcart(HttpServletRequest request) {
		int m_num = 1;
		ArrayList<String> list = new ArrayList<>(); 
		Cookie[] getCookie = request.getCookies();
		if(getCookie != null){
		      for(int i=0; i<getCookie.length; i++){
		         Cookie c = getCookie[i];
		         String name = c.getName(); // 쿠키 이름 가져오기
		         String value = c.getValue(); // 쿠키 값 가져오기
		         if(exercisetypeservice.exercisetypename(name)!=null) {
		        	 list.add(name);

		         };
		      }
		   }

		System.out.println(list);
		String[] resultlist = list.toArray(new String[0]);
		List<ExercisetypeDTO> ptcart = exercisetypeservice.exercisetyperesssearch(resultlist);
		return ptcart;
	}

}





