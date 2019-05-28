package com.literary.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.literary.entity.Prose;

@Service
public interface IMyWorksProseService {
	/**
	 * 获取相应的日记
	 * @return
	 */
	public List<Prose> getAllMyWorksProse(Map<String, Object> maps);
	/**
	 * 获取所有日记的个数
	 * @return
	 */
	public int getCountMyWorksProse();
	/**
	 * 删除一条日记
	 * @id
	 */
	public Boolean deleteMyWorkProse(int id);
	/**
	 * 查看一条日记
	 * @id
	 */
	public Prose scanMyWorkProse(int id);
}
