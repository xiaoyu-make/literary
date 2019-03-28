package com.literary.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.literary.entity.Motto;
import com.literary.web.dao.IMottoDao;
import com.literary.web.service.IMottoService;

@Service
public class MottoServiceImpl implements IMottoService {

	@Autowired
	IMottoDao matto;
	
	@Override
	public Boolean addMotto(String motto) {
		return matto.addMotto(motto);
	}

	@Override
	public Motto getMotto() {
		return matto.getMotto();
	}

}
