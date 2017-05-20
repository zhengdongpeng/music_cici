package com.cici.music.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.contans.MusicConts;
import com.cici.music.dao.PlayAlbumDao;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.Param;
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

	public int getAlbumAll(HttpServletRequest request, int i) {
		if(i==1){
			List<Album> list = playAlbumDao.getAlbumAll(new Param(0,0,"",1,0));
			return list.size();
		}
		return 0;
	}
	public List<Album> getAlbumAll() {
			List<Album> list = playAlbumDao.getAlbumAll(new Param(0,0,"",1,0));
		return list;
	}

	public String albumListData(HttpServletRequest request) {
		String n1 = request.getParameter("n");
		int n=Integer.parseInt(n1);
		JSONObject json = new JSONObject();
		json.put("stats", "error");
		Param p=new Param(n*MusicConts.PAGER_COUNT,
				n*MusicConts.PAGER_COUNT+MusicConts.PAGER_COUNT,"",2,0);
		List<Album> list = playAlbumDao.getAlbumAll(p);
		if(list!=null){
			json.put("stats", "success");
			json.put("list", list);
		}
		return json.toJSONString();
	}

	public String albumlistForUid(HttpServletRequest request) {
		JSONObject json = new JSONObject();
		String uid= request.getParameter("uid");
		json.put("stats", "error");
		Param p=new Param(0,
				0,uid,2,0);
		List<Album> list = playAlbumDao.getAlbumListForUid(p);
		if(list!=null){
			json.put("stats", "success");
			json.put("list", list);
		}
		return json.toJSONString();
	}

	public int insertAlbum(Album song) {
		return playAlbumDao.insertAlbum(song);
	}
		

}
