package com.literary.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.literary.web.service.IMottoService;

@Controller
@RequestMapping("motto")
public class Motto {
	
	@Autowired
	IMottoService mott;
	
	@RequestMapping("addMotto")
	public String addMotto(HttpServletRequest request){
		String motto = request.getParameter("motto");
		Boolean Motto = mott.addMotto(motto);
		if(!Motto)
			return "../common/error";
		return null;
	}
}
