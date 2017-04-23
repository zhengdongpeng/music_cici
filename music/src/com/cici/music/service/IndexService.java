package com.cici.music.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cici.music.dao.IndexDao;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.SongDto;
import com.cici.music.pojo.Zhuanji;

@Service
public class IndexService {
	@Resource
	IndexDao indexDao;
	
	public List<Zhuanji> getNewZhuanji() {
		return indexDao.queryForNew();
	}

	public String getNewSongToJson() {
	//	List<>indexDao.queryForNewSongLen15();
		return null;
	}

	public String getNewSong() {
		List<SongDto> list=indexDao.getsong();
		JSONObject bbb=new JSONObject();
		JSONArray ccc=new JSONArray();
		ccc.add(list.toArray());
		bbb.put("ccc_c", ccc);
		return bbb.toJSONString();
	}
	
	

}
