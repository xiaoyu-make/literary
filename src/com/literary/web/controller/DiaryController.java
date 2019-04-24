package com.literary.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;

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
		String  adress = "";
		if(request.getParameter("adress") !=null)
		    adress = new String(request.getParameter("adress").getBytes("ISO8859-1"), "utf-8");
		String dateStr = "";
		if(request.getParameter("date")!=null){
			dateStr = new Date().toString();
		}
		String  date = new String(dateStr.getBytes("ISO8859-1"), "utf-8");
		String  comment = "";
		if(request.getParameter("daily")!=null)
			comment = new String(request.getParameter("daily").getBytes("ISO8859-1"), "utf-8");
		String  wether = "";
		if(request.getParameter("wether") !=null)
		    wether = new String(request.getParameter("wether").getBytes("ISO8859-1"), "utf-8");
		Boolean addDiary = diaryService.addDiary(wether,adress,date,comment);
		if(!addDiary)
			return "../common/error";
		return "bootstamp/myWorks/myWorkDiary";		
	}
}
