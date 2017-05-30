package com.cici.music.pojo;

import java.util.Date;

public class Collect {
	
	private int uid;
	private int sid;
	private Date sctime;
	private int type;
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Collect(){}
	
	public Collect(int uid, int sid, Date sctime,int type) {
		super();
		this.uid = uid;
		this.sid = sid;
		this.sctime = sctime;
		this.type=type;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public Date getSctime() {
		return sctime;
	}
	public void setSctime(Date sctime) {
		this.sctime = sctime;
	}

}
