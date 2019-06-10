package com.literary.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("novel")
public class NovelController {
	
	public String addNovel(HttpServletRequest request,Model model){
		String parameter = request.getParameter("");
		
		return null;
	}
}
