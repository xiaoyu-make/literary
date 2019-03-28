package com.literary.web.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.literary.entity.DailySentence;

@Repository
public interface IDailySentenceDao {
	/**
	 * 获取当天名言警句	
	 * @return
	 */
	public DailySentence todaySentence();
	/**
	 * 添加一条名言警句	
	 * @return
	 */
	public Boolean insertDailySentence(@Param("textarea_daily")String textarea_daily,@Param("sqlDate")Timestamp sqlDate);
	/**
	 * 编辑一条名言警句	
	 * @return
	 */
	public Boolean editDailySentence(@Param("textarea_daily")String textarea_daily,@Param("id")String id,@Param("sqlDate")Timestamp sqlDate);
	/**
	 * 删除
	 * @return
	 */
	public Boolean deleteDailySentence(int[] id);
	/**
	 * 获取所有名言警句	
	 * @return
	 */
	//public List<DailySentence> getAllDailySentence(@Param("pageNum")int pageNum,@Param("pageSize")int pageSize);
	public List<DailySentence> getAllDailySentence(@Param("maps")Map<String, Object> maps);
	/**
	 * 获取所有名言警句个数
	 * @return
	 */
	public int getCountDailySentence();
}
