package com.literary.web.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.literary.web.dao.IDiaryDao;
import com.literary.web.service.IDiaryService;

@Service
public class DiaryServiceImpl implements IDiaryService {
	
	@Autowired
	IDiaryDao diaryDao;
	
	@Override
	public Boolean addDiary(String wether,String adress,String dateStr,String comment) {
		int userId = 0;		
		long parse = Date.parse(dateStr);
		java.sql.Timestamp date=new java.sql.Timestamp(parse);
        return diaryDao.addDiary(userId,wether,adress,date,comment);
	}
}
