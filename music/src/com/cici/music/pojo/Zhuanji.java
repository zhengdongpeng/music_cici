package com.cici.music.pojo;

import java.util.Date;

public class Zhuanji {
	private int zhujiId ;
	private String zname;
	private String js;
	private int songerId;
	private String fxgs;
	private int typeId;
	private Date fbtime;
	private Date cjtime;
	private String img;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getZhujiId() {
		return zhujiId;
	}
	public void setZhujiId(int zhujiId) {
		this.zhujiId = zhujiId;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
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
