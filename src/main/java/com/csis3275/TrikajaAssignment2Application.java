package com.csis3275;


import java.io.File;
import java.util.concurrent.TimeUnit;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import com.csis3275.controller.landing_controller;

@SpringBootApplication
public class TrikajaAssignment2Application {

	public static void main(String[] args) {
		new File(landing_controller.uploadDirectory).mkdir();
		SpringApplication.run(TrikajaAssignment2Application.class, args);
	}
}
