package com.health.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.health.dto.ExercisetypeDTO;
import com.health.service.ExercisetypeService;



@Controller
public class PtController {
	@Autowired
	@Qualifier("exercisetypeservice")
	ExercisetypeService service;

	@RequestMapping(value="/exerciselist", method = RequestMethod.GET)
	public ModelAndView ptlist() {
		ModelAndView mv = new ModelAndView();
		List<ExercisetypeDTO> list = service.exercisetypelist();
		mv.addObject("exercisetypelist", list);
		mv.setViewName("ptservice/exercisetypelist");
		return mv;
	}
	@RequestMapping(value="/exerciselist", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	public String routinsave(String rs_name) {
		if(rs_name.equals("ajax")) {
			return "{\"process\":\"정상로그인\" , \"role\":\"admin\"}";
		}
		else {
			return "{\"process\":\"비정상로그인\" , \"role\":\"user\"}";
		}
		
	}
//	@RequestMapping(value="/ajax/login", method=RequestMethod.POST , produces = {"application/json;charset=utf-8"} )
//	@ResponseBody
//	public String loginresult(String id, String password) {
//		if(id.equals("ajax") && password.equals("1234")) {
//			return "{\"process\":\"정상로그인\" , \"role\":\"admin\"}";
//		}
//		else {
//			return "{\"process\":\"비정상로그인\" , \"role\":\"user\"}";
//		}
//		
//	}
		
	@RequestMapping(value = "/exercisetypepick")
	@ResponseBody
	public List<ExercisetypeDTO> exercisetypepick(HttpServletRequest request) {
	    String[] ajaxMsg = request.getParameterValues("sendMsg");
	    List<ExercisetypeDTO> list = service.exercisetypelist(ajaxMsg);
	    return list;
	}
	
	@RequestMapping(value = "/insertroutine")
	@ResponseBody
	public String insertroutine(HttpServletRequest request) {
	        
	    String[] ajaxMsg = request.getParameterValues("sendMsg2");
	    int size = ajaxMsg.length;
	    
	    for(int i=0; i<size; i++) {
	        System.out.println("JSP에서 받은 MSG : "+ajaxMsg[i]);
	    }
	        
	    String resultMsg = "AJAX Success";
	    System.out.println("Controller에서 보낸 MSG : "+ resultMsg);
	        
	    return resultMsg;
	}

//	public ModelAndView ptlis(String [] et_ename) {
//		ModelAndView mv = new ModelAndView();
//		List<ExercisetypeDTO> list = service.exercisetypelist(et_ename);
//		mv.addObject("exercisetyperesslist", list);
//		mv.addObject("name", "운동검색리스트");
//		mv.setViewName("ptservice/exercisetypelist");
//		return mv;
//	}
	
	
//	@RequestMapping("/exercisepaginglist" )
//	public ModelAndView ptlist(int page) {
//		// id 알파벳순 나열 ?페이지 5명 회원 
//		ModelAndView mv = new ModelAndView();
//		List<ExercisetypeDTO> list = service.exercisetypelist(page);
//		mv.addObject("exercisetypelist", list);
//		mv.addObject("name", "페이징처리리스트");
//		mv.setViewName("ptservice/exercisetypelist");
//		return mv;
//	}
//
//	@RequestMapping("/exercisesearch" )
//	public ModelAndView ptlist(String [] et_ename) {
//		ModelAndView mv = new ModelAndView();
//		List<ExercisetypeDTO> list = service.exercisetypelist(et_ename);
//		mv.addObject("exercisetyperesslist", list);
//		mv.addObject("name", "운동검색리스트");
//		mv.setViewName("ptservice/exercisetypelist");
//		return mv;
//	}
//	@RequestMapping(value="/exerciseinsert", method = RequestMethod.GET)
//	public String insertform() {
//		return "ptservice/insertform";
//	}
//	
//	
//	@RequestMapping("/exercisedelete")
//	public String deleteresult(String et_ename) {
//		int result = service.deletemember(et_ename);
//
//		if(result == 1) {
//			return "redirect:/exerciselist";//컨트롤러 url매핑메소드호출(회원리스트)
//		}
//		return "redirect://exerciseinsert";// 컨트롤러 url매핑메소드 호출(가입폼)
//	}
}





