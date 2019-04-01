package com.literary.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.literary.entity.AboutMe;
import com.literary.web.service.IAboutMeSentenceService;

@Controller
@RequestMapping("aboutMeSentence")
public class AboutMeSentenceController {
	
	@Autowired
	IAboutMeSentenceService aboutMeSentence;
	
	@RequestMapping("/getAboutMe")
	public String getAboutMe(Model model){
		AboutMe aboutMe = aboutMeSentence.getAboutMe();
		model.addAttribute("aboutMe", aboutMe);
		if(aboutMe==null)
			return  "../common/error";
		return "bootstamp/dailySentence/aboutme";	
	}
}
