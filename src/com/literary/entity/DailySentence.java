package com.literary.entity;

import java.io.Serializable;
import java.util.Date;

public class DailySentence implements Serializable{

	/**
	 * @Field @serialVersionUID : TODO(这里用一句话描述这个类的作用)
	 */
	private static final long serialVersionUID = 8377343051016983427L;	
	private int id;
	private String dailySentence;
	private Date date;
	
	public DailySentence() {
		super();
	}
	
	public DailySentence(int id, String dailySentence, Date date) {
		super();
		this.id = id;
		this.dailySentence = dailySentence;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDailySentence() {
		return dailySentence;
	}
	public void setDailySentence(String dailySentence) {
		this.dailySentence = dailySentence;
	}
		
}
