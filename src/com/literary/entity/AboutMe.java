package com.literary.entity;

import java.io.Serializable;

public class AboutMe implements Serializable {

	private static final long serialVersionUID = -8296940395625586148L;
	private String aboutme;

	public String getAboutme() {
		return aboutme;
	}

	public void setMotto(String aboutme) {
		this.aboutme = aboutme;
	}

}
