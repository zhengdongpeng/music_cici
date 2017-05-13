package com.cici.music.pojo;

import java.util.Date;

public class Album {
	private int albumId ;
	private String aname;
	private String js;
	private int songerId;
	private String singername;
	private String fxgs;
	private int typeId;
	private Date fbtime;
	private Date cjtime;
	private String img;
	public String getSingername() {
		return singername;
	}
	public void setSingername(String singername) {
		this.singername = singername;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getJs() {
		return js;
	}
	public void setJs(String js) {
		this.js = js;
	}
	public int getSongerId() {
		return songerId;
	}
	public void setSongerId(int songerId) {
		this.songerId = songerId;
	}
	public String getFxgs() {
		return fxgs;
	}
	public void setFxgs(String fxgs) {
		this.fxgs = fxgs;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public Date getFbtime() {
		return fbtime;
	}
	public void setFbtime(Date fbtime) {
		this.fbtime = fbtime;
	}
	public Date getCjtime() {
		return cjtime;
	}
	public void setCjtime(Date cjtime) {
		this.cjtime = cjtime;
	}

}
