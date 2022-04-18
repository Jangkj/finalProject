package com.health;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.health.controller.MemberController;

@SpringBootApplication
@ComponentScan(basePackageClasses = MemberController.class)
@ComponentScan(basePackages = {"com.health.service"})
@MapperScan(basePackages = "com.health.dao")
public class FinalprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}
