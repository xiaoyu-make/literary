package com.literary.web.service;

import org.springframework.stereotype.Service;

import com.literary.entity.AboutMe;

@Service
public interface IAboutMeSentenceService {
	/**
	 * 获取当天名言警句	
	 * @return
	 */
	public AboutMe getAboutMe();
}
