package com.literary.web.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.literary.web.dao.IDiaryDao;
import com.literary.web.dao.IProseDao;
import com.literary.web.service.IDiaryService;
import com.literary.web.service.IProseService;

@Service
public class ProseServiceImpl implements IProseService {
	
	@Autowired
	IProseDao proseDao;
	
	@Override
	public Boolean addProse(String prose) {
		Integer userId = 1;		
		Date date = new Date();
		java.sql.Timestamp sqlDate=new java.sql.Timestamp(date.getTime());
        return proseDao.addProse(userId,sqlDate,prose);
	}
}
