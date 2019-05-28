package com.literary.web.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.literary.entity.Prose;
import com.literary.web.dao.IMyWorksProseDao;
import com.literary.web.service.IMyWorksProseService;

@Service
public class MyWorksProseServiceImpl implements IMyWorksProseService {
	@Autowired
	IMyWorksProseDao myworkprose;
	
	@Override
	public List<Prose> getAllMyWorksProse(Map<String, Object> maps) {
		return myworkprose.getAllMyWorksProse(maps);
	}

	@Override
	public int getCountMyWorksProse() {		
		return myworkprose.getCountMyWorksProse();
	}

	@Override
	public Boolean deleteMyWorkProse(int id) {
		return myworkprose.deleteMyWorkProse(id);
	}

	@Override
	public Prose scanMyWorkProse(int id) {
		return myworkprose.scanMyWorkProse(id);
	}
	
	
}

