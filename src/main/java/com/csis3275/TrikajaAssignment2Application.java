package com.csis3275;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.csis3275.controller.JhonatanProfileController_jar_86;

@SpringBootApplication
public class TrikajaAssignment2Application {

	public static void main(String[] args) {
		new File(JhonatanProfileController_jar_86.uploadDirectory).mkdir();
		SpringApplication.run(TrikajaAssignment2Application.class, args);
	}

}
