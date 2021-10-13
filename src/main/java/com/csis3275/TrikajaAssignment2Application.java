package com.csis3275;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TrikajaAssignment2Application {

	public static void main(String[] args) {
		new File(JhonatanProfileController_jar_86.uploadDirectory).mkdir();
		SpringApplication.run(TrikajaAssignment2Application.class, args);
	}

}
