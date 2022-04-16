package com.health;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
<<<<<<< HEAD
import org.springframework.context.annotation.ComponentScan;

import com.health.controller.MemberController;
import com.health.controller.ProductController;
import com.health.dao.MemberDAO;
=======
>>>>>>> refs/heads/erioll0

@SpringBootApplication
<<<<<<< HEAD
@MapperScan(basePackageClasses = MemberDAO.class)
=======
>>>>>>> refs/heads/erioll0
public class FinalprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}