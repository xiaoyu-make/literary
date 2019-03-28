package com.literary.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.literary.entity.DailySentence;

@Service
public interface IDailySentenceService {
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
	public Boolean deleteDailySentence(int[] id);
	/**
	 * 获取相应的名言警句	
	 * @return
	 */
	public List<DailySentence> getAllDailySentence(Map<String, Object> maps);
	/**
	 * 获取所有名言警句的个数
	 * @return
	 */
	public int getCountDailySentence();
}
