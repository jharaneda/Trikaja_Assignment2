package com.csis3275.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.csis3275.model.Likes_kne_58;

@Controller
public class Controller_kne_58 {

	@RequestMapping("/")
	public String presentForm(ModelMap model) {
		model.addAttribute("likesData", new Likes_kne_58());
		return "kadynPage";
	}
	
	@PostMapping("/getLikes")
	public String getLikes(Likes_kne_58 likesData, BindingResult result, ModelMap model) {
		System.out.println(likesData.likes());
		model.addAttribute("likes",likesData.likes());
		return "kadynPage";
	}
}
