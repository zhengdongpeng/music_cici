package com.cici.music.pojo;

import java.util.Date;

public class User {
	private int uid;
	private String username;
	private String password;
	private String sex;
	private String head;
	private String email;
	private Date zctime;
	private String yanzhengma;
	private String uname;
	private String city;
	private Date birthday;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	private int code;//删除标识，0是存在，1是删除
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getYanzhengma() {
		return yanzhengma;
	}
	public void setYanzhengma(String yanzhengma) {
		this.yanzhengma = yanzhengma;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getZctime() {
		return zctime;
	}
	public void setZctime(Date zctime) {
		this.zctime = zctime;
	}
	
}
