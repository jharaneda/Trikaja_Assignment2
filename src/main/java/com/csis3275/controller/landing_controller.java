package com.csis3275.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class landing_controller {

	@RequestMapping("/")
	public String presentForm(ModelMap model) {
		return "landing";
	}
	
	
}
