package com.cici.music.pojo;

import java.util.Date;

public class Song {
	private int sid;
	private String sname;
	private String song;
	private double length;
	private int type;
	private  String typeName;
	private int songerid;
	private String fxgs;
	private String lyric;
	private int zjid;
	private String zjName;
	private Date fbtime;
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Date getFbtime() {
		return fbtime;
	}
	public void setFbtime(Date fbtime) {
		this.fbtime = fbtime;
	}
	public String getZjName() {
		return zjName;
	}
	public void setZjName(String zjName) {
		this.zjName = zjName;
	}
	private String songerName;
	private String img;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSongerName() {
		return songerName;
	}
	public void setSongerName(String songerName) {
		this.songerName = songerName;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public double getLength() {
		return length;
	}
	public void setLength(double length) {
		this.length = length;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getSongerid() {
		return songerid;
	}
	public void setSongerid(int songerid) {
		this.songerid = songerid;
	}
	public String getFxgs() {
		return fxgs;
	}
	public void setFxgs(String fxgs) {
		this.fxgs = fxgs;
	}
	public String getLyric() {
		return lyric;
	}
	public void setLyric(String lyric) {
		this.lyric = lyric;
	}
	public int getZjid() {
		return zjid;
	}
	public void setZjid(int zjid) {
		this.zjid = zjid;
	}
	

}
