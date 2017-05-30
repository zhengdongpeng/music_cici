package com.cici.music.dao;

import java.util.List;

import com.cici.music.pojo.Test;

public interface TestDao {
	
	List<Test> queryForName(Test t);

}
