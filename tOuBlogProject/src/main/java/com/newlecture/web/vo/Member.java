package com.newlecture.web.vo;

import java.util.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private String birth;
	private String isLunar;
	private String cPhone;
	private String email;
	private String habit;
	private Date   regDate;
	private int point;
	
	
	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getIsLunar() {
		return isLunar;
	}
	public void setIsLunar(String isLunar) {
		this.isLunar = isLunar;
	}
	public String getCPhone() {
		return cPhone;
	}
	public void setCPhone(String cPhone) {
		this.cPhone = cPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHabit() {
		return habit;
	}
	public void setHabit(String habit) {
		this.habit = habit;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
