package com.health.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.health.dto.MemberDTO;
import com.health.service.MemberServiceImpl;
import com.health.valid.Validator;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl memberservice;

	@Autowired
	Validator valid;
	
	@Autowired
	HttpSession session;
	
	// 메인 페이지 오픈
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// 회원가입 페이지 오픈
	@GetMapping("/user/signup")
	public String dispSignup() {
		return "signup";
	}

	// 회원가입 처리
	@PostMapping("/user/signup")
	public String execSignup(@Validated MemberDTO dto, Errors errors, Model model) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority("USER"));
		dto.setAuthorities(authorities);
		memberservice.createUser(dto);
		return "redirect:/user/login";
	}
    // 로그인 페이지 오픈
    @GetMapping("/user/loginPage")
    public String dispLogin() {
        return "login";
    }
/*
	// 로그인 에러송출용 - 미완
	@GetMapping("/user/loginPage")
	public String dispLogin(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "exception", required = false) String exception, Model model) {
		model.addAttribute("error", error);
		model.addAttribute("exception", exception);
		return "login";
	}
*/
	// 로그인 결과 페이지 오픈
	@GetMapping("/user/login/result")
	public String dispLoginResult() {

		return "index"; // loginSuccess
	}

    // 로그아웃 결과 페이지 오픈
    @GetMapping("/user/logout/result")
    public String dispLogout() {
        return "index";
    }
    
	// 접근 거부 페이지 오픈 - 연결용
	@GetMapping("/user/denied")
	public String dispDenied() {
		return "denied";
	}

	// 내 정보 페이지오픈
	@GetMapping("/user/info")
	public String memberview(String id, Model model) {
		model.addAttribute("dto", memberservice.getInfo(id));
		return "myinfo";
	}


	// 어드민 페이지 오픈
	@GetMapping("/user/admin")
	public String dispAdmin() {
		return "admin";
	}

	// 회원가입 비동기 이메일체크
	@ResponseBody
	@PostMapping("/checkEmail")
	public int checkEmail(String m_mail) {
		int result = memberservice.checkEmail(m_mail);
		return result;
	}
	
	//회원정보 변경 페이지 오픈
	@GetMapping("/user/info/infoupdate")
	public String dispupdate() {
		return "infoupdate";
	}
	
	//약관동의 페이지 오픈
	@RequestMapping(value = "/user/agreement", method = RequestMethod.GET)
	public String agreement() {
		return "agreement";
	}
	
	/*
	@PostMapping("/user/info/infoupdate/result")
    public ModelAndView update(@RequestBody Map<String, Object> param){
		ModelAndView mv = new ModelAndView();
    	Map<String, Object> result = new HashMap<String, Object>();
    	mv.get
    	
    	
    	result.put("dto", memberservice.updateUser(param));   	
    	
    	System.out.println(result);   	
    	
        return result;
    }	
    */
    
	
	/*
	@GetMapping("/board/post")
	public String post(Model model, Authentication authentication) {
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		model.addAttribute("author", userDetails.getUsername());
		return "board/post.html";
	}
	


	@GetMapping("/")
	public String username(Principal principal) {   
		System.out.println(principal.getName());     
		return "/";
	}
	//Principal 객체 활용하는 방법
	*/
	
	

	
	
	
	
	
	/*
	//회원정보수정	
	@GetMapping("/user/info/infoupdate")	
	public String updateMember(@Validated MemberDTO dto, Errors errors) {			
		memberservice.updateUser(dto);
		return "infoupdate";
	}
	*/
	
	/*
	// 회원정보수정
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/user/info/infoupdate")
	public String profile(Principal principal, Model model) {
		String m_mail = principal.getName();
		MemberDTO dto = memberservice.getInfo(m_mail);
		model.addAttribute("user", dto);
		return "infoupdate";
	}
    */
    
	
	

    /*
    // 로그인 페이지
    @GetMapping("/user/loginPage")
    public String dispLogin() {
        return "login";
    }
     */
    

	
}