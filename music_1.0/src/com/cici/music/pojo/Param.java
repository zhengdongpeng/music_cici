package com.cici.music.pojo;

public class Param {
	
	private int start;//起始页
	private int length;//分页长度
	private String searchParam;//搜索参数
	private int searchType;//搜索参数类型
	private int songType;//歌曲类型
	public Param(int start, int length, String searchParam, int searchType,
			int songType) {
		super();
		this.start = start;
		this.length = length;
		this.searchParam = searchParam;
		this.searchType = searchType;
		this.songType = songType;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getSearchParam() {
		return searchParam;
	}
	public void setSearchParam(String searchParam) {
		this.searchParam = searchParam;
	}
	public int getSearchType() {
		return searchType;
	}
	public void setSearchType(int searchType) {
		this.searchType = searchType;
	}
	public int getSongType() {
		return songType;
	}
	public void setSongType(int songType) {
		this.songType = songType;
	}
	

}
