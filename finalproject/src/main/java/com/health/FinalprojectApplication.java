package com.health;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.health.controller.AdminController;
import com.health.controller.MemberController;
import com.health.dao.AdminDAO;
import com.health.dao.CategoryDAO;
import com.health.dao.MemberDAO;

import upload.UploadController;

@SpringBootApplication
@ComponentScan(basePackageClasses = MemberController.class)
@ComponentScan(basePackageClasses = AdminController.class)
@MapperScan(basePackageClasses = MemberDAO.class)
@MapperScan(basePackageClasses = AdminDAO.class)
@MapperScan(basePackageClasses = CategoryDAO.class)
public class FinalprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}
