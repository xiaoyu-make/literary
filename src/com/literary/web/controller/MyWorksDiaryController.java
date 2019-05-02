package com.literary.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.literary.entity.Diary;
import com.literary.util.Pagination;
import com.literary.web.service.IMyWorksDiaryService;

@Controller
@RequestMapping("/myworksdiary")
public class MyWorksDiaryController {
	
	@Autowired
	IMyWorksDiaryService myworksdiary;
	
	@RequestMapping("/getAllMyWorksDiary")
	public ModelAndView getAllMyWorksDiary(HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		int pageSize = Integer.parseInt(request.getParameter("pageSize") == null ? "8" : request.getParameter("pageSize"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum") == null ? "1" : request.getParameter("pageNum"));
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("pageNum", (pageNum - 1) * pageSize);
		List<Diary> allMyWorksDiary = myworksdiary.getAllMyWorksDiary(maps); 		
		int count = myworksdiary.getCountMyWorksDiary();
		Pagination page = new Pagination(count);
		page.setCurrentPage(pageNum);
		modelAndView.addObject("pnums", page.getPageNumList());
		modelAndView.addObject("currentPage", pageNum);
		modelAndView.addObject("pnext_flag", page.nextEnable());
		modelAndView.addObject("plast_flag", page.lastEnable());
		page.lastPage();
		modelAndView.addObject("last_page", page.getCurrentPage());
		modelAndView.addObject("count", count);
		modelAndView.addObject("pageCount", page.getPages());
		if (allMyWorksDiary != null) {
			modelAndView.setViewName("/bootstamp/myWorks/myWorkDiary");
			modelAndView.addObject("allMyWorksDiary", allMyWorksDiary);
		}
		return modelAndView;
	}
	
}
