package com.literary.web.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.literary.entity.Diary;

@Repository
public interface IMyWorksDiaryDao {
	/**
	 * 获取所有日记
	 * @return
	 */
	public List<Diary> getAllMyWorksDiary(@Param("maps")Map<String, Object> maps);
	/**
	 * 获取所有日记
	 * @return
	 */
	public int getCountMyWorksDiary();
}
