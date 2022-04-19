package com.health.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.health.dto.MemberDTO;
import com.health.service.MemberServiceImpl;
import com.health.valid.Validator;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl memberservice;
	
	@Autowired
	Validator valid;

    // 메인 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
        return "index";
    }

    // 회원가입 페이지
    @GetMapping("/user/signup")
    public String dispSignup() {
        return "signup";
    }

    // 회원가입 처리
    @PostMapping("/user/signup")
    public String execSignup(MemberDTO dto) {    	
    	List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority("USER"));
		dto.setAuthorities(authorities);		   	
    	memberservice.createUser(dto);    	
        return "redirect:/user/loginPage";
    	
    }

    // 로그인 페이지
    @GetMapping("/user/loginPage")
    public String dispLogin() {
        return "login";
    }

    // 로그인 결과 페이지
    @GetMapping("/user/login/result")
    public String dispLoginResult() {
    	
        return "index"; //loginSuccess
    }

    // 로그아웃 결과 페이지
    //@GetMapping("/user/logout/result")
    //public String dispLogout() {
    //    return "logout";
    //}

    // 접근 거부 페이지
    @GetMapping("/user/denied")
    public String dispDenied() {
        return "denied";
    }

    // 내 정보 페이지
    @GetMapping("/user/info")
    public String memberview(String id, Model model) {
		model.addAttribute("dto", memberservice.getInfo(id));
        return "myinfo";
    }
        

    // 어드민 페이지
    @GetMapping("/user/admin")
    public String dispAdmin() {
        return "admin";
    }
    
    //회원가입 비동기 이메일체크
    @ResponseBody
	@PostMapping("/checkEmail")
	public int checkEmail(String m_mail) {    	
		int result = memberservice.checkEmail(m_mail);		
		return result;
	}




}