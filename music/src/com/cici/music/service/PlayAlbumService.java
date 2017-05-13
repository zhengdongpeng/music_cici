package com.cici.music.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.dao.PlayAlbumDao;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.Song;

@Service
public class PlayAlbumService {
	@Resource
	PlayAlbumDao playAlbumDao;

	public Album getAlbumForId(int albumId) {
		Album album=playAlbumDao.getForId(albumId);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			album.setFbtime(sdf.parse(sdf.format(album.getFbtime())));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return album;
	}

	public String musicList(HttpServletRequest request) {
		String id = request.getParameter("id");
		JSONObject json = new JSONObject();
		json.put("stats", "error");
		if(StringUtils.isEmpty(id)){
			json.put("error", "ID为空");
		}
		List<Song> list = playAlbumDao.getMusicList(Integer.parseInt(id));
		json.put("size", list.size());
		json.put("list", list);
		json.put("stats", "success");
		return json.toJSONString();
	}
		

}
