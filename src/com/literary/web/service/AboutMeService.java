package com.literary.web.service;

import java.util.List;

import com.literary.entity.DailySentence;

public interface AboutMeService {
	/**
	 * 获取一条名言警句	
	 * @return
	 */
	public DailySentence getDailySentence();
	/**
	 * 添加一条名言警句	
	 * @return
	 */
	public Boolean insertDailySentence(String textarea_daily);
	/**
	 * 编辑一条名言警句	
	 * @return
	 */
	public Boolean editDailySentence(String textarea_daily,String id);
	/**
	 * 删除
	 * @return
	 */
	public Boolean deleteDailySentence(String[] id);
	/**
	 * 获取所有名言警句	
	 * @return
	 */
	public List<DailySentence> getAllDailySentence();
}
