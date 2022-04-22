package com.health.config;

import java.util.Collections;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.SessionTrackingMode;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.health.service.MemberService;

import lombok.RequiredArgsConstructor;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	MemberService userService;
	
	@Qualifier("error")
	private final AuthenticationFailureHandler customFailureHandler;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {		
		http.authorizeRequests()			
			.anyRequest().permitAll()		
			.and()
		/*
			.antMatchers("/user/resources/**", "/user/css/**", "/user/js/**").permitAll()// webapp/resources/... 각종 프론트리소스 접근허용
			.antMatchers("/", "/user/signup", "/user/denied", "/user/logout/result").permitAll()
			.antMatchers("/user/admin/**").access("hasAuthority('ADMIN')")			
			.antMatchers("/user/info/**").access("hasAuthority('USER')") // 페이지 권한 설정
			.anyRequest().permitAll()//authenticated()
			.and()
		*/	
			
			.formLogin().loginPage("/user/loginPage")//로그인 페이지, 로그인 실패 페이지 .failureUrl("/user/login?error")
			.loginProcessingUrl("/login")
			.defaultSuccessUrl("/user/login/result")
			.failureHandler(customFailureHandler).failureUrl("/user/login?error")
			.permitAll() // 로그인 설정
			.and()
			.logout().logoutRequestMatcher(new AntPathRequestMatcher("/user/logout"))
			//.invalidateHttpSession(true).deleteCookies("JSESSIONID"); // 로그아웃 설정
			.logoutSuccessUrl("/").invalidateHttpSession(true) //user/logout/result
			.and()
			.exceptionHandling().accessDeniedPage("/user/denied") // 403 예외처리 핸들링
			
			.and();
			//.csrf().disable();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService).passwordEncoder(userService.passwordEncoder());
	}

	@Override
    // js, css, image 설정은 보안 설정의 영향 밖에 있도록 만들어주는 설정.
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations());
    }

	
	
	//j-sessionid 삭제
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