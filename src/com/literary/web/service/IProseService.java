package com.literary.web.service;

import org.springframework.stereotype.Service;

@Service
public interface IProseService {
	/**
	 * 添加日记
	 * @return
	 */
	public Boolean addProse(String prose);
}
