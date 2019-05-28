package com.literary.web.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.literary.web.service.IProseService;

@Controller
@RequestMapping("prose")
public class ProseController {

	@Autowired
	IProseService proseService;
	
	@RequestMapping("addProse")
	public String addDiary(HttpServletRequest request,Model model) throws UnsupportedEncodingException {
		String  prose = "";
		if(request.getParameter("prose")!=null)
			prose = new String(request.getParameter("prose").getBytes("ISO8859-1"), "utf-8");
		Boolean addDiary = proseService.addProse(prose);
		if(!addDiary)
			return "../common/error";
		return "redirect:/literary/myworksdiary/getAllMyWorksProse";		
	}
	
}
