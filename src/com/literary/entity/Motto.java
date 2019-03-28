package com.literary.entity;

import java.io.Serializable;

public class Motto implements Serializable{

	private static final long serialVersionUID = -4332380806438726750L;

	private String motto;

	public String getMotto() {
		return motto;
	}

	public void setMotto(String motto) {
		this.motto = motto;
	}
	
}
