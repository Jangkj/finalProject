package com.health;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.health.controller.MemberController;
import com.health.dao.AdminDAO;
import com.health.dao.MemberDAO;


@SpringBootApplication
@ComponentScan(basePackageClasses = MemberController.class)
@MapperScan(basePackageClasses = MemberDAO.class)
@MapperScan(basePackageClasses = AdminDAO.class)
public class FinalprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}
