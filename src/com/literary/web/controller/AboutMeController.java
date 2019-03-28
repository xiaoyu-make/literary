package com.literary.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.literary.entity.DailySentence;
import com.literary.web.service.AboutMeService;
import com.literary.web.service.impl.AboutMeServiceImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AboutMeController extends ActionSupport{
	private static final long serialVersionUID = -2169669276019430171L;

	AboutMeService aboutmeservice =new AboutMeServiceImpl();
	public String everydaySentence(){				
		DailySentence dailySentence = aboutmeservice.getDailySentence();
		ActionContext.getContext().put("dailySentence", dailySentence);
		return SUCCESS;		
	}
	
	public String addAboutMe(){				
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("text/html;charset=utf-8");
	    String textarea_daily=request.getParameter("textarea_daily"); 	    	    
		Boolean dailySentence = aboutmeservice.insertDailySentence(textarea_daily);
		if(dailySentence==true)
			return SUCCESS;		
		return ERROR;		
	}	

	public String editAboutMe() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("text/html;charset=utf-8");
		String textarea_daily = request.getParameter("textarea_daily");
		String getSelected = request.getParameter("getSelected");		
		Boolean editDailySentence = aboutmeservice.editDailySentence(textarea_daily, getSelected);
		if (editDailySentence == true)
			return SUCCESS;
		return ERROR;
	}

	public String deleteAboutMe(){	
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("text/html;charset=utf-8");
	    String[] getSelectIds = request.getParameterValues("getSelectIds[]"); 	    	
	    String getSelected = request.getParameter("getSelected"); 	    	    
	    if(getSelectIds==null)
	    	getSelectIds = new String[]{getSelected};
		Boolean deleteDailySentence = aboutmeservice.deleteDailySentence(getSelectIds);
		if(deleteDailySentence==true)
			return SUCCESS;		
		return ERROR;			
	}	

	private List<DailySentence> allDailySentence;
	
	public List<DailySentence> getAllDailySentence() {
		return allDailySentence;
	}

	public void setAllDailySentence(List<DailySentence> allDailySentence) {
		this.allDailySentence = allDailySentence;
	}

	public String findAllAboutMe(){
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("text/html;charset=utf-8");		
		allDailySentence = aboutmeservice.getAllDailySentence();		
		if(allDailySentence!=null || allDailySentence.size()!=0)
			ActionContext.getContext().put("allDailySentenceSize", allDailySentence.size());
		return Action.SUCCESS;
	}
	
}
