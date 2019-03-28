package com.literary.web.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.literary.entity.DailySentence;
import com.literary.web.dao.IDailySentenceDao;
import com.literary.web.service.IDailySentenceService;

@Service
public class DailySentenceServiceImpl implements IDailySentenceService{
	
	@Resource
	IDailySentenceDao dailySentencedao;

	
	@Override
	public DailySentence getDailySentence() {				
		return dailySentencedao.todaySentence();
	}
	@Override
	public Boolean insertDailySentence(String textarea_daily) {		
		Date date = new Date();
		java.sql.Timestamp sqlDate=new java.sql.Timestamp(date.getTime());
		return dailySentencedao.insertDailySentence(textarea_daily,sqlDate);
	}
	@Override
	public Boolean editDailySentence(String textarea_daily,String id) {
		Date date = new Date();
		java.sql.Timestamp sqlDate=new java.sql.Timestamp(date.getTime());		
		return dailySentencedao.editDailySentence( textarea_daily, id,sqlDate);
	}
	@Override
	public Boolean deleteDailySentence(int[] id) {
		return dailySentencedao.deleteDailySentence(id);
	}
	public List<DailySentence> getAllDailySentence(Map<String, Object> maps){
		//int pageSize = Integer.valueOf(maps.get("pageSize").toString());
		//int pageNum = Integer.valueOf(maps.get("pageNum").toString());
		//return dailySentencedao.getAllDailySentence(pageNum,pageSize);
		return dailySentencedao.getAllDailySentence(maps);
	}
	public int getCountDailySentence(){
		return dailySentencedao.getCountDailySentence();
	}
}
