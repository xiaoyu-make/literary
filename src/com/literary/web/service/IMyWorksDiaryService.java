package com.literary.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.literary.entity.Diary;

@Service
public interface IMyWorksDiaryService {
	/**
	 * 获取相应的名言警句	
	 * @return
	 */
	public List<Diary> getAllMyWorksDiary(Map<String, Object> maps);
	/**
	 * 获取所有名言警句的个数
	 * @return
	 */
	public int getCountMyWorksDiary();
}
