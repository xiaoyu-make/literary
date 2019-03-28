package com.literary.web.dao;

import org.springframework.stereotype.Repository;

import com.literary.entity.Motto;

@Repository
public interface IMottoDao {
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
