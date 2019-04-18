package com.literary.web.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.literary.web.service.IDiaryService;

@Controller
@RequestMapping("diary")
public class DiaryController {

	@Autowired
	IDiaryService diaryService;
	
	@RequestMapping("addDiary")
	public String addDiary(HttpServletRequest request,Model model) throws UnsupportedEncodingException {
		String  adress = new String(request.getParameter("addr").getBytes("ISO8859-1"), "utf-8");
		String  date = new String(request.getParameter("datetime").getBytes("ISO8859-1"), "utf-8");
		String  comment = new String(request.getParameter("comment").getBytes("ISO8859-1"), "utf-8");
		String  wether = new String(request.getParameter("sel").getBytes("ISO8859-1"), "utf-8");
		Boolean addDiary = diaryService.addDiary(wether,adress,date,comment);
		if(!addDiary)
			return "../common/error";
		return "bootstamp/dailySentence/motto";		
	}
}
