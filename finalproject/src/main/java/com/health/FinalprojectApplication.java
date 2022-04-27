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
@ComponentScan(basePackages = {"com.health.controller"})
@ComponentScan(basePackages = {"com.health.service"})
@ComponentScan(basePackages = {"com.health.dto"})
@MapperScan(basePackages = {"com.health.dao"})
public class FinalprojectApplication {
	public static void main(String[] args) {
		SpringApplication.run(FinalprojectApplication.class, args);
	}

}
