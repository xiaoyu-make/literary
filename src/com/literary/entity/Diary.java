package com.literary.entity;

import java.io.Serializable;
import java.util.Date;

public class Diary implements Serializable {

	private static final long serialVersionUID = 918301109538454638L;

	private int id;
	private int useid;
	private String wether;
	private String address;
	private Date date;
	private String diary;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUseid() {
		return useid;
	}

	public void setUseid(int useid) {
		this.useid = useid;
	}

	public String getWether() {
		return wether;
	}

	public void setWether(String wether) {
		this.wether = wether;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDiary() {
		return diary;
	}

	public void setDiary(String diary) {
		this.diary = diary;
	}
}
