package com.health.config;

import java.util.Collections;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.SessionTrackingMode;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.health.service.MemberService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	MemberService userService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/resources/**").permitAll()// webapp/resources/... 각종 프론트리소스 접근허용		
			.antMatchers("/user/admin/**").access("hasAuthority('ADMIN')")
			
			.antMatchers("/user/myinfo").access("hasAuthority('USER')") // 페이지 권한 설정
			
			//.antMatchers("/", "/user/signup", "/user/denied", "/user/logout/result").permitAll()
			.antMatchers("/**").permitAll()
			
			.anyRequest().authenticated()
			.and()
			.formLogin().loginPage("/user/loginPage")
			.loginProcessingUrl("/login")
			.defaultSuccessUrl("/user/login/result")
			.permitAll() // 로그인 설정
			.and()
			.logout().logoutRequestMatcher(new AntPathRequestMatcher("/user/logout")) // 로그아웃 설정
			.logoutSuccessUrl("/user/logout/result").invalidateHttpSession(true)
			.and()
			.exceptionHandling().accessDeniedPage("/user/denied") // 403 예외처리 핸들링
			.and()
			.csrf().disable();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService).passwordEncoder(userService.passwordEncoder());
	}
	
	//j-session 삭제
	@Bean
	public ServletContextInitializer clearJsession() {
		return new ServletContextInitializer() {
			@Override
			public void onStartup(ServletContext servletContext) throws ServletException {
				servletContext.setSessionTrackingModes(Collections.singleton(SessionTrackingMode.COOKIE));
				SessionCookieConfig sessionCookieConfig = servletContext.getSessionCookieConfig();
				sessionCookieConfig.setHttpOnly(true);
			}
		};	
	}
	
}