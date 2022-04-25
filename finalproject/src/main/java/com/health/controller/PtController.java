package com.health.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.health.dto.ExercisetypeDTO;
import com.health.dto.PtroutineDTO;
import com.health.dto.PtroutineoneDTO;
import com.health.dto.PtuserDTO;
import com.health.dto.WorkoutDTO;
import com.health.service.ExercisetypeService;
import com.health.service.PtroutineService;
import com.health.service.PtroutineoneService;
import com.health.service.PtuserService;
import com.health.service.WorkoutService;

@Controller
public class PtController {
	@Autowired
	@Qualifier("exercisetypeservice")
	ExercisetypeService exercisetypeservice;
	
	@Autowired
	@Qualifier("ptroutineservice")
	PtroutineService ptroutineservice;
	
	@Autowired
	@Qualifier("ptuserservice")
	PtuserService ptuserservice;
	
	@Autowired
	@Qualifier("ptroutineoneservice")
	PtroutineoneService ptroutineoneservice;
	
	@Autowired
	@Qualifier("workoutservice")
	WorkoutService workoutservice;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String main() {
		return "index";
	}
	
	@RequestMapping(value="ptservice/insertptuser", method = RequestMethod.GET)
	public String ptuser() {
		/*user*/
		String user = "user@user.com";
		/**/
		int check = ptuserservice.ptusercheck(user);
		if(check==0) {
			return "ptservice/insertptuser";
		}else {
			return "redirect:ptmain";
		}
	}
	
	@RequestMapping(value="ptservice/insertptuser", method = RequestMethod.POST)
	public String insertptuser(String pu_kg, String pu_cm, String pu_target) {
		/*user*/
		String user = "user@user.com";
		/**/
		PtuserDTO newuser = new PtuserDTO();
		newuser.setM_mail(user);
		newuser.setPu_kg(Integer.parseInt(pu_kg));
		newuser.setPu_cm(Integer.parseInt(pu_cm));
		newuser.setPu_target(Integer.parseInt(pu_target));
		ptuserservice.insertptuser(newuser);
		return "redirect:ptmain";
	}
	
	@RequestMapping(value="ptservice/saveasptuser", method = RequestMethod.GET)
	public String saveasptuser() {
		return "ptservice/saveasptuser";
	}
	
	@RequestMapping(value="ptservice/saveasptuser", method = RequestMethod.POST)
	public String saveasptuser(String pu_kg, String pu_cm, String pu_target) {
		/*user*/
		String user = "yo10@naver.com";
		/**/
		PtuserDTO newuser = new PtuserDTO();
		newuser.setM_mail(user);
		newuser.setPu_kg(Integer.parseInt(pu_kg));
		newuser.setPu_cm(Integer.parseInt(pu_cm));
		newuser.setPu_target(Integer.parseInt(pu_target));
		ptuserservice.updateuser(newuser);
		return "redirect:ptmain";
	}	
	@RequestMapping(value="ptservice/ptmain", method = RequestMethod.GET)
	public ModelAndView ptmain() {
		ModelAndView mv = new ModelAndView();
		List<ExercisetypeDTO> list = exercisetypeservice.exercisetypelist();
		/*user*/
		PtuserDTO user = ptuserservice.ptuser("user@user.com");
		mv.addObject("pt_user", user);
		int pu_num = user.getPu_num();
		/**/
		int pu_target = user.getPu_target();
		int pu_targetadd = workoutservice.pu_targetadd(pu_num);
		if(pu_targetadd == 0){
				mv.addObject("percent", 0);
		}else if(pu_target<=pu_targetadd) {
				mv.addObject("percent", 100);
				List<String> day =workoutservice.pu_targetday(pu_num);
				mv.addObject("add_day", day);
		}else {
			double a = ((double)pu_targetadd / (double)pu_target * 100);
			int percent = (int)a;
			mv.addObject("percent", percent);
			List<String> day =workoutservice.pu_targetday(pu_num);
			mv.addObject("add_day", day);
			
		}
		mv.setViewName("ptservice/ptmain");
		return mv;
	}
	@RequestMapping(value="ptservice/exerciselist", method = RequestMethod.GET)
	public ModelAndView ptlist() {
		ModelAndView mv = new ModelAndView();
		List<ExercisetypeDTO> list = exercisetypeservice.exercisetypelist();
		/*user*/
		PtuserDTO user = ptuserservice.ptuser("user@user.com");
		int user_kg = user.getPu_kg();
		/**/
		mv.addObject("exercisetypelist", list);
		mv.addObject("user_kg", user_kg);
		mv.setViewName("ptservice/exercisetypelist");
		return mv;
	}
	@RequestMapping(value="ptservice/exerciselist", method=RequestMethod.POST , produces = {"application/json;charset=utf-8"} )
	@ResponseBody
	 public List<ExercisetypeDTO> init(HttpServletRequest request) {
		ArrayList<String> etlist = new ArrayList<>();
		Enumeration pick = request.getParameterNames();
		 while (pick.hasMoreElements()) {
		        String picket = (String)pick.nextElement();
		        etlist.add(picket);
		     }
		 			String[] result = etlist.toArray(new String[0]);
		 			List<ExercisetypeDTO> picklist = exercisetypeservice.exercisetyperesssearch(result);
		 			return picklist;
	}
	
	@RequestMapping(value="ptservice/picklist", method = RequestMethod.POST)
	public String picklist(HttpServletRequest request) {
		/*user*/
		String m_mail = "user@user.com";
		PtuserDTO user = ptuserservice.ptuser(m_mail);
		int pu_num = user.getPu_num();
		/**/
		String pr_info = request.getParameter("pr_info");
		String [] et_ename = request.getParameterValues("et_ename");
		String [] et_name = request.getParameterValues("et_name");
		String [] pr_count = request.getParameterValues("pr_count");
		String pr_allkcal = request.getParameter("pr_allkcal");
		String pr_alltime = request.getParameter("pr_alltime");
		
		PtroutineDTO routine = new PtroutineDTO();
		routine.setPr_info(pr_info);
 		routine.setPu_num(pu_num);
 		routine.setPr_allkcal(Integer.parseInt(pr_allkcal));
 		routine.setPr_alltime(Integer.parseInt(pr_alltime));
 		ptroutineservice.insertptroutine(routine);
 		PtroutineDTO serch = ptroutineservice.ptroutine_info(pr_info, pu_num);
 		int pr_num = serch.getPr_num();
		
		for(int i=0; i<et_ename.length; i++) {
			PtroutineoneDTO routineone = new PtroutineoneDTO();
			routineone.setPr_num(pr_num);
			routineone.setEt_ename(et_ename[i]);
			routineone.setPr_count(Integer.parseInt(pr_count[i]));
	 		ptroutineoneservice.insertptroutineone(routineone);
		};
		return "redirect:ptroutinelist";
	}
	
	@RequestMapping(value="ptservice/ptroutinelist" )
	public ModelAndView insertresultto() {
		/*user*/
		String m_mail = "user@user.com";
		PtuserDTO user = ptuserservice.ptuser(m_mail);
		int pu_num = user.getPu_num();
		/**/
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ptservice/ptroutinelist");		
		return mv;
	}
	
	@RequestMapping(value="ptservice/routinelist", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	@ResponseBody
	public List<PtroutineDTO> insertresult(){
		/*user*/
		String m_mail = "user@user.com";
		PtuserDTO user = ptuserservice.ptuser(m_mail);
		int pu_num = user.getPu_num();
		/**/
		List<PtroutineDTO> list = ptroutineservice.ptroutine(pu_num);
		return list;
	}

	@RequestMapping(value="ptservice/deletepr", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	@ResponseBody
	public int deleterotine(String delete_rt){
		/*user*/
		String m_mail = "user@user.com";
		PtuserDTO user = ptuserservice.ptuser(m_mail);
		int pu_num = user.getPu_num();
		/**/
		int delete = Integer.parseInt(delete_rt);
		int a = ptroutineservice.deleteptroutine(delete);
		return a;
	}	
	@RequestMapping(value="ptservice/startpt", method = RequestMethod.GET)
	public ModelAndView routinestart(String pt){
		/*user*/
		String m_mail = "user@user.com";
		PtuserDTO user = ptuserservice.ptuser(m_mail);
		int pu_num = user.getPu_num();
		int pr_num = Integer.parseInt(pt.substring(2));
		/**/
		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = ptroutineoneservice.ptroutinepickjoin(pr_num);
		mv.addObject("pick", list);
		mv.setViewName("ptservice/startpt2");
		
		return mv;
	}
	@RequestMapping(value="ptservice/ptroutinesave", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	@ResponseBody
	public String ptroutinesave(String datetime, String pr_num){
		/*user*/
		String m_mail = "user@user.com";
		PtuserDTO user = ptuserservice.ptuser(m_mail);
		int pu_num = user.getPu_num();
		/**/
		int oneweek = workoutservice.oneweek(pu_num);
		int point = workoutservice.point(pu_num);
		int pru = Integer.parseInt(pr_num);
		PtroutineDTO Ptroutine = ptroutineservice.ptroutineprnum_info(pru);
		String pr_info = Ptroutine.getPr_info();
		WorkoutDTO workout = new WorkoutDTO();
		workout.setPu_num(pu_num);
		workout.setWorkout_time(datetime);
		workout.setPr_info(pr_info);
		if(oneweek>=6 &&  point==0) {
			workout.setWorkout_point(50);
			workoutservice.insertworkout(workout);
			ptuserservice.updatepoint(pu_num);
			return "{\"ms\":\"50 포인트가 적립되었습니다.\"}";
		}else{
			workout.setWorkout_point(0);
			workoutservice.insertworkout(workout);
			return "{\"ms\":\"운동이 완료되었습니다\"}";
		}
	}	
	
}





