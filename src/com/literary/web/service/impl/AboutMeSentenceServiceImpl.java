package com.literary.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.literary.entity.AboutMe;
import com.literary.web.dao.IAboutMeSentenceDao;
import com.literary.web.service.IAboutMeSentenceService;

@Service
public class AboutMeSentenceServiceImpl implements IAboutMeSentenceService{
	
	@Autowired
	IAboutMeSentenceDao aboutMeSentence;
	
	public AboutMe getAboutMe(){
		return aboutMeSentence.getAboutMe();
	};
}
