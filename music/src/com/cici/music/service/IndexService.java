package com.cici.music.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cici.music.dao.IndexDao;
import com.cici.music.pojo.Zhuanji;

@Service
public class IndexService {
	@Resource
	IndexDao indexDao;
	
	public List<Zhuanji> getNewZhuanji() {
		return indexDao.queryForNew();
	}

}
