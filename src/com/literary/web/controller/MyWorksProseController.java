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

import com.literary.entity.Prose;
import com.literary.util.Pagination;
import com.literary.web.service.IMyWorksProseService;

@Controller
@RequestMapping("/myworksprose")
public class MyWorksProseController {
	
	@Autowired
	IMyWorksProseService myworksprose;
	
	@RequestMapping("/getAllMyWorksProse")
	public ModelAndView getAllMyWorksProse(HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		int pageSize = Integer.parseInt(request.getParameter("pageSize") == null ? "8" : request.getParameter("pageSize"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum") == null ? "1" : request.getParameter("pageNum"));
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("pageNum", (pageNum - 1) * pageSize);
		List<Prose> allMyWorksProse = myworksprose.getAllMyWorksProse(maps); 		
		int count = myworksprose.getCountMyWorksProse();
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
		if (allMyWorksProse != null) {
			modelAndView.setViewName("/bootstamp/myWorks/myWorkProse");
			modelAndView.addObject("allMyWorksProse", allMyWorksProse);
		}
		   
		return modelAndView;
	}
	
	@RequestMapping("deleteMyWorkProse")
	public String deleteMyWorkProse(HttpServletRequest request, HttpServletResponse response, Model model){
		String idStr = request.getParameter("id");
		Integer id = 0;
		if(!idStr.isEmpty())
			id = Integer.valueOf(idStr);
		Boolean deleteMyWorkProse = myworksprose.deleteMyWorkProse(id);
		if (deleteMyWorkProse == false)
			return "../common/error";
		return "redirect:/literary/myworksprose/getAllMyWorksProse";
	}
	
	@RequestMapping("scanMyWorkProse")
	public String scanMyWorkProse(HttpServletRequest request, HttpServletResponse response, Model model){
		String idStr = request.getParameter("id");
		Integer id = 0;
		if(!idStr.isEmpty())
			id = Integer.valueOf(idStr);
		Prose scanMyWorkProse = myworksprose.scanMyWorkProse(id);
		if (scanMyWorkProse == null)
			return "../common/error";
		model.addAttribute("scanMyWorkProse", scanMyWorkProse);
		return "/bootstamp/writing/prose";
	}
	
	
	
}
