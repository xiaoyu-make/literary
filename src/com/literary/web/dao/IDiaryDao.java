package com.literary.web.dao;

import java.sql.Timestamp;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IDiaryDao {
	/**
	 * 添加日记
	 * @return
	 */
	public Boolean addDiary(@Param("userId") int userId, @Param("wether") String wether, @Param("adress") String adress,
			@Param("date") Timestamp date, @Param("comment") String comment);	
	
}
