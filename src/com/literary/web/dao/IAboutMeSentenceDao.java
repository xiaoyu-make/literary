package com.literary.web.dao;

import org.springframework.stereotype.Repository;

import com.literary.entity.AboutMe;

@Repository
public interface IAboutMeSentenceDao {
	/**
	 * 获取当天名言警句	
	 * @return
	 */
	public AboutMe getAboutMe();
	
}
