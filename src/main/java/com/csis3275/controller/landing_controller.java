package com.csis3275.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.csis3275.model.JhonatanProfileModel_jar_86;
import com.csis3275.model.Likes_kne_58;


@Controller
public class landing_controller {

	@RequestMapping("/")
	public String presentForm(ModelMap model) {
		return "landing";
	}
	
	@RequestMapping("/kadynPage")
	public String presentFormTwo(ModelMap model) {
		model.addAttribute("likesData", new Likes_kne_58());
		return "kadynPage";
	}
	
	@PostMapping("/getLikes")
	public String getLikes(Likes_kne_58 likesData, BindingResult result, ModelMap model) {
		System.out.println(likesData.likes());
		model.addAttribute("likes",likesData.likes());
		return "kadynPage";
	}
	
	public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/uploads/";
	private String name = "Jhonatan";
	private String lastName = "Araneda";
	private String address = "1933 41st Ave, Vancouver";
	private String email = "aranedacartesj@student.douglascollege.ca";
	private String description = "Born in Santiago de Chile, 34 years old. "
			+ "Adventurer wanting to learn, know and try new experiences. "
			+ "His friends describe him as a happy, committed and honest person. "
			+ "He has worked most of his life linked to contact centers. "
			+ "Where he met his wife, with whom he has been in a relationship for 14 years. "
			+ "They came to Canada looking for new experiences and they brought 3 cats from him. "
			+ "That's how crazy they are.";
	private String phoneNumber = "778-691-9126";
	private String pictureName = "jhonatanpicture.jpeg";

	@RequestMapping("/jhonatanPage")
	public String hello(ModelMap model) {
		model.addAttribute("profileData",
				new JhonatanProfileModel_jar_86(name, lastName, address, email, description, phoneNumber, pictureName));
		return "profile_jar_86";
	}

	@PostMapping("/saveInformation")
	public String saveInformation(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes,
			HttpSession httpSession, ModelMap model, JhonatanProfileModel_jar_86 profile) {
		model.addAttribute("profileData", profile);

		name = profile.getName();
		lastName = profile.getLastName();
		address = profile.getAddress();
		email = profile.getEmail();
		description = profile.getDescription();
		phoneNumber = profile.getPhoneNumber();
		pictureName = profile.getPictureName();

		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return "redirect:index";
		}
		try {
			byte[] bytes = file.getBytes();

			String fileName = file.getOriginalFilename();
			Path path = Paths.get(uploadDirectory + file.getOriginalFilename());
			Files.write(path, bytes);

			model.addAttribute("message", fileName);
			pictureName = fileName;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "profileEdited_jar_86";
	}

	@PostMapping("/editProfile")
	public String profileDescription(JhonatanProfileModel_jar_86 profile, BindingResult result, ModelMap model) {
		model.addAttribute("profileData",
				new JhonatanProfileModel_jar_86(name, lastName, address, email, description, phoneNumber, pictureName));
		return "profileEdit_jar_86";
	}
	
	
}
