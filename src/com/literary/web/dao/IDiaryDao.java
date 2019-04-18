package com.literary.web.dao;

import java.sql.Timestamp;

import org.springframework.stereotype.Repository;

@Repository
public interface IDiaryDao {
	/**
	 * 添加日记
	 * @return
	 */
	public Boolean addDiary(int userId,String wether,String adress,Timestamp date,String comment);
	
}
