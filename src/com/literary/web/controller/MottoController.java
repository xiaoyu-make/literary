package com.literary.web.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.literary.entity.Motto;
import com.literary.web.service.IMottoService;

@Controller
@RequestMapping("mottoController")
public class MottoController {
	
	@Autowired
	IMottoService mott;
	
	@ResponseBody
	@RequestMapping("addMotto")
	public Boolean addMotto(HttpServletRequest request){
		String motto = null;
		try {
			motto = new String(request.getParameter("motto").getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}  		
		Boolean Mot = mott.addMotto(motto);
		return Mot;
	}
	
	@RequestMapping("getMotto")
	public String getMotto(HttpServletRequest request,Model model){
		Motto Mot = mott.getMotto();
		model.addAttribute("motto", Mot);
		if(Mot==null)
			return "../common/error";
		return "bootstamp/motto/motto";
	}
	
}



