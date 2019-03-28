package com.literary.web.service;

import org.springframework.stereotype.Service;

import com.literary.entity.Motto;

@Service
public interface IMottoService {
	/**
	 * 添加座右铭
	 * 
	 * @return
	 */
	public Boolean addMotto(String motto);
	
	/**
	 * 获取座右铭
	 * 
	 * @return
	 */
	public Motto getMotto();
		

}
