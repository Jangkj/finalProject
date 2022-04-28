package com.health;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.health.controller.PtController;
import com.health.dao.ExercisetypeDAO;
import com.health.dao.PtroutineDAO;
import com.health.dao.PtroutineoneDAO;
import com.health.dao.PtuserDAO;
import com.health.dto.ExercisetypeDTO;
import com.health.service.ExercisetypeService;


@SpringBootApplication
@ComponentScan
@ComponentScan(basePackageClasses = PtController.class)
@ComponentScan(basePackageClasses = ExercisetypeDAO.class)
@ComponentScan(basePackageClasses = ExercisetypeDTO.class)
@ComponentScan(basePackageClasses = ExercisetypeService.class)
@MapperScan(basePackageClasses = ExercisetypeDAO.class)
@MapperScan(basePackageClasses = PtroutineDAO.class)
@MapperScan(basePackageClasses = PtuserDAO.class)
@MapperScan(basePackageClasses = PtroutineoneDAO.class)
public class FinalprojectApplication {
	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}
