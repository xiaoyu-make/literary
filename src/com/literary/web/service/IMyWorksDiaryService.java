package com.literary.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.literary.entity.Diary;

@Service
public interface IMyWorksDiaryService {
	/**
	 * 获取相应的日记
	 * @return
	 */
	public List<Diary> getAllMyWorksDiary(Map<String, Object> maps);
	/**
	 * 获取所有日记的个数
	 * @return
	 */
	public int getCountMyWorksDiary();
	/**
	 * 删除一条日记
	 * @id
	 */
	public Boolean deleteMyWorkDiary(int id);
	/**
	 * 查看一条日记
	 * @id
	 */
	public Diary scanMyWorkDiary(int id);
}
