package com.literary.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.literary.entity.DailySentence;
import com.literary.util.Pagination;
import com.literary.web.service.IDailySentenceService;

@Controller
@RequestMapping("dailySentence")
public class DailySentenceController {
	
	@Resource
	IDailySentenceService dailysentence;
	
	@RequestMapping("todaySentence")
	public String todaySentence(HttpServletRequest request, HttpServletResponse response,Model model) {		
		DailySentence dailySente = dailysentence.getDailySentence();
		if(dailySente==null){
			return "../common/error";
		}
		model.addAttribute("dailySente", dailySente);
		return "/bootstamp/dailySentence/oneDailySentence";
	}
	
	@RequestMapping("addSentence")
	public String addSentence(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		String textarea_daily = request.getParameter("textarea_daily");
		Boolean insertDailySentence = dailysentence.insertDailySentence(textarea_daily);
		if (insertDailySentence == false)
			return "../common/error";
		return "redirect:/literary/dailySentence/getAllSentence";
	}
	
	@RequestMapping("editSentence")
	public String editSentence(HttpServletRequest request, HttpServletResponse response) {
		String ids = request.getParameter("ids");
		String textarea_daily = request.getParameter("textarea_daily");
		Boolean insertDailySentence = dailysentence.editDailySentence(textarea_daily, ids);
		if (insertDailySentence == false)
			return "../common/error";
		return "redirect:/literary/dailySentence/getAllSentence";
	}
	
	@RequestMapping("deleteSentence")
	public String deleteSentence(HttpServletRequest request, HttpServletResponse response) {
		String sid = request.getParameter("ids");
		String[] id = sid.split(",");
        int[] ids=new int[id.length];
        for(int i=0;i<id.length;i++){
        	ids[i]=Integer.parseInt(id[i]);
        }
		Boolean deleteDailySentence = dailysentence.deleteDailySentence(ids);
		if (deleteDailySentence == false)
			return "../common/error";
		return "redirect:/literary/dailySentence/getAllSentence";
	}
	
	@RequestMapping(value = "/getAllSentence")
	public ModelAndView getAllSentence(HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView modelAndView = new ModelAndView();
	    int pageSize = Integer.parseInt(request.getParameter("pageSize") == null ? "8" : request.getParameter("pageSize"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum") == null ? "1" : request.getParameter("pageNum"));
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("pageNum", (pageNum-1) * pageSize);
		List<DailySentence> allDailySentence = dailysentence.getAllDailySentence(maps);
		int count = dailysentence.getCountDailySentence();
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
		if(allDailySentence != null){
			modelAndView.setViewName("/bootstamp/dailySentence/findAllData");
			modelAndView.addObject("allDailySentence", allDailySentence);
		}
		return modelAndView;
	}
}
