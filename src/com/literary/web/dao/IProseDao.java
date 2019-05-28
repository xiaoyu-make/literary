package com.literary.web.dao;

import java.sql.Timestamp;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IProseDao {
	/**
	 * 添加散文
	 * @return
	 */
	public Boolean addProse(@Param("userId") Integer userId, @Param("date") Timestamp date,
			@Param("prose") String prose);	
	
}
