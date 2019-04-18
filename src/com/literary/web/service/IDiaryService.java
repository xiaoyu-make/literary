package com.literary.web.service;

import org.springframework.stereotype.Service;

@Service
public interface IDiaryService {
	/**
	 * 添加日记
	 * @return
	 */
	public Boolean addDiary(String wether,String adress,String date,String comment);
}
