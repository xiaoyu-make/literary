package com.literary.web.service.impl;

import java.util.List;

import com.literary.entity.DailySentence;
import com.literary.web.dao.AboutMeDao;
import com.literary.web.dao.impl.AboutMeDaoImpl;
import com.literary.web.service.AboutMeService;

public class AboutMeServiceImpl implements AboutMeService{
	AboutMeDao aboutMe = new AboutMeDaoImpl();
	@Override
	public DailySentence getDailySentence() {				
		return aboutMe.getDailySentence();
	}
	@Override
	public Boolean insertDailySentence(String textarea_daily) {		
		return aboutMe.insertDailySentence(textarea_daily);
	}
	@Override
	public Boolean editDailySentence(String textarea_daily,String id) {
		return aboutMe.editDailySentence( textarea_daily, id);
	}
	@Override
	public Boolean deleteDailySentence(String[] id) {
		return aboutMe.deleteDailySentence(id);
	}
	public List<DailySentence> getAllDailySentence(){
		return aboutMe.getAllDailySentence();

	}

}
