package com.csis3275;


import java.io.File;
import java.util.concurrent.TimeUnit;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import com.csis3275.controller.JhonatanProfileController_jar_86;

@SpringBootApplication
public class TrikajaAssignment2Application {

	public static void main(String[] args) {
		new File(JhonatanProfileController_jar_86.uploadDirectory).mkdir();
		SpringApplication.run(TrikajaAssignment2Application.class, args);
	}
}
