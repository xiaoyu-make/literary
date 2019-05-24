package com.literary.web.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.literary.entity.Diary;
import com.literary.web.dao.IMyWorksDiaryDao;
import com.literary.web.service.IMyWorksDiaryService;

@Service
public class MyWorksDiaryServiceImpl implements IMyWorksDiaryService {
	@Autowired
	IMyWorksDiaryDao myworkdiary;
	
	@Override
	public List<Diary> getAllMyWorksDiary(Map<String, Object> maps) {
		return myworkdiary.getAllMyWorksDiary(maps);
	}

	@Override
	public int getCountMyWorksDiary() {		
		return myworkdiary.getCountMyWorksDiary();
	}

	@Override
	public Boolean deleteMyWorkDiary(int id) {
		return myworkdiary.deleteMyWorkDiary(id);
	}

	@Override
	public Diary scanMyWorkDiary(int id) {
		return myworkdiary.scanMyWorkDiary(id);
	}
	
	
}

