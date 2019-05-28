package com.literary.web.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.literary.entity.Prose;

@Repository
public interface IMyWorksProseDao {
	/**
	 * 获取所有日记
	 * @return
	 */
	public List<Prose> getAllMyWorksProse(@Param("maps")Map<String, Object> maps);
	/**
	 * 获取所有日记
	 * @return
	 */
	public int getCountMyWorksProse();
	/**
	 * 删除一条日记
	 * @id
	 */
	public Boolean deleteMyWorkProse(@Param("id")int id);
	/**
	 * 查看一条日记
	 * @id
	 */
	public Prose scanMyWorkProse(@Param("id")int id);
}
