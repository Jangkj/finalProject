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
import org.springframework.web.servlet.ModelAndView;
import com.health.dto.ExercisetypeDTO;
import com.health.dto.PtroutineDTO;
import com.health.service.ExercisetypeService;
import com.health.service.PtroutineService;

@Controller
public class PtController {
	@Autowired
	@Qualifier("exercisetypeservice")
	ExercisetypeService exercisetypeservice;
	
	@Autowired
	@Qualifier("ptroutineservice")
	PtroutineService ptroutineservice;
	
	@RequestMapping(value="/exerciselist", method = RequestMethod.GET)
	public ModelAndView ptlist() {
		ModelAndView mv = new ModelAndView();
		List<ExercisetypeDTO> list = exercisetypeservice.exercisetypelist();
		mv.addObject("exercisetypelist", list);
		mv.setViewName("ptservice/exercisetypelist");
		return mv;
	}
	
	@RequestMapping(value="/exercisepick", method = RequestMethod.GET)
	public ModelAndView ptpicklist(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Cookie[] getCookie = request.getCookies();
		ArrayList<String> pick = new ArrayList<>();
		ArrayList<String> num = new ArrayList<>();
		if(getCookie != null){
		      for(int i=0; i<getCookie.length; i++){
		         Cookie c = getCookie[i];
		         String name = c.getName(); // 쿠키 이름 가져오기
		         String value = c.getValue(); // 쿠키 값 가져오기
		         if(exercisetypeservice.exercisetypename(name)!=null) {
		        	 pick.add(name);
		        	 num.add(value);
		         };
		      }
		   }
		if(pick.size() != 0) {
		String[] result = pick.toArray(new String[0]);
		List<ExercisetypeDTO> picklist = exercisetypeservice.exercisetyperesssearch(result);
			mv.addObject("exercisepick", picklist);
			mv.addObject("pick_num", num);
			mv.addObject("pick", "선택한 운동목록이 여기에 표시됩니다.");
		}else{
			mv.addObject("pick", "선택한 운동목록이 없습니다.");
		}
		mv.setViewName("ptservice/exercisepicklist");
		return mv;
	}
	
	@RequestMapping(value="/exercisepick", method = RequestMethod.POST)
	public ModelAndView insertresult(HttpServletRequest request) {
		int pu_num = 1;
		String pr_info = request.getParameter("pr_info");
		String [] name = request.getParameterValues("et_ename"); 
		String [] pr_count = request.getParameterValues("pr_count");  
		for(int i=0; i<name.length; i++) {
			PtroutineDTO routine = new PtroutineDTO();
			routine.setPr_info(pr_info);
	 		routine.setPu_num(2);
	 		routine.setEt_ename(name[i]);
	 		int num = Integer.parseInt(pr_count[i]);
	 		routine.setPr_count(num);
	 		ptroutineservice.insertptroutine(routine);

		};
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ptservice/exercisepicklist");
		return mv;
	}
	

}





