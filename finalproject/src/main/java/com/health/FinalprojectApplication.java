package com.health;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import com.health.controller.MemberMybatisController;
import com.health.dao.MemberDAO;
import com.health.dto.MemberDTO;
import com.health.service.MemberService;


@SpringBootApplication
@ComponentScan
@ComponentScan(basePackageClasses = MemberMybatisController.class)
@ComponentScan(basePackageClasses = MemberDAO.class)
@ComponentScan(basePackageClasses = MemberDTO.class)
@ComponentScan(basePackageClasses = MemberService.class)
@MapperScan(basePackageClasses = MemberDAO.class)
public class FinalprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}
