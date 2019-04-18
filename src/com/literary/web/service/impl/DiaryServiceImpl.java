package com.literary.web.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.sql.Timestamp date = null;
        try {
        	Date dateS = sdf.parse(dateStr);
        	date=new java.sql.Timestamp(dateS.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
        return diaryDao.addDiary(userId,wether,adress,date,comment);
	}
}
