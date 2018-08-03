package com.tikitaka.cloudFunding.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Member {

	private String email;
	private String name;
	private String password;
	private String profile_img;
	private String enroll_date;
	private String delflag;
	
	public Member() {
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public String getEnroll_date() {
		return enroll_date;
	}

	public void setEnroll_date(String enroll_date) {
		this.enroll_date = enroll_date;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", name=" + name + ", password=" + password + ", profile_img=" + profile_img
				+ ", enroll_date=" + enroll_date + ", delflag=" + delflag + "]";
	}
	
	
	
}
