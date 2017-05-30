package com.cici.music.pojo;

import java.util.Date;

public class MUser {

	private int mid;
	private String username;
	private String password;
	private int jibie;
	private String head;
	private Date zctime;
	private String yanzhengma;
	public String getYanzhengma() {
		return yanzhengma;
	}
	public void setYanzhengma(String yanzhengma) {
		this.yanzhengma = yanzhengma;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
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
	public int getJibie() {
		return jibie;
	}
	public void setJibie(int jibie) {
		this.jibie = jibie;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public Date getZctime() {
		return zctime;
	}
	public void setZctime(Date zctime) {
		this.zctime = zctime;
	}
}
