package com.literary.entity;

import java.io.Serializable;

/**
 * 
 * @ClassName Prose
 * @author op1426
 * @Date 2019年5月27日 下午7:50:36
 * @version 1.0.0
 */
public class Prose implements Serializable{

	/**
	 * @Field @serialVersionUID 
	 */
	private static final long serialVersionUID = -2541570591499831127L;
	
	private int id;
	private int userId;
	private String prose;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getProse() {
		return prose;
	}
	public void setProse(String prose) {
		this.prose = prose;
	}
}
