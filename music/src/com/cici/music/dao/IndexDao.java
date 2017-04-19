package com.cici.music.dao;

import java.util.List;

import com.cici.music.pojo.Test;
import com.cici.music.pojo.Zhuanji;

public interface IndexDao {
	/**
	 * 最新的專輯，取６個
	 * @return
	 */
	List<Zhuanji> queryForNew();

}
