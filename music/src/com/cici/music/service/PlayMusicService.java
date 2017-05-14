package com.cici.music.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.contans.MusicConts;
import com.cici.music.dao.PlayMusicDao;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.Collect;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.User;

@Service
public class PlayMusicService {
	@Resource
	PlayMusicDao playMusicDao;
	public Song getSongForId(int songId) {
		return playMusicDao.getForId(songId);
		
	}
	
	
	public String collect(HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		User user= (User) request.getSession().getAttribute("user");
		if(user==null){
			json.put("url", "login.do");
			return json.toJSONString();
		}
		int type = Integer.parseInt(request.getParameter("type"));
		int id =Integer.parseInt(request.getParameter("id"));
		Collect con=new Collect(((User)request.getSession().getAttribute("user")).getUid(),
				id,new Date(),0);
		if(type==MusicConts.PLAY_MUSIC){
			int i=playMusicDao.insertConllectSong(con);
			if(i>0){
				json.put("stats", "success");
				json.put("success", "收藏成功！");
				return json.toJSONString();
			}
		}else if(type==MusicConts.PLAY_ALUBM){
			int i=playMusicDao.insertConllectAlubm(con);
			if(i>0){
				json.put("stats", "success");
				json.put("success", "收藏成功！");
				return json.toJSONString();
			}
		}
		json.put("error", "收藏失败！");
		return json.toJSONString();
	}
	public String iscollect(HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		User user= (User) request.getSession().getAttribute("user");
		if(user==null){
			json.put("url", "login.do");
			return json.toJSONString();
		}
		int type = Integer.parseInt(request.getParameter("type"));
		int id =Integer.parseInt(request.getParameter("id"));
		Collect con=new Collect(((User)request.getSession().getAttribute("user")).getUid(),
				id,new Date(),1);
		if(type==MusicConts.PLAY_MUSIC){
			Collect i=playMusicDao.queryCollectForId(con);
			json.put("stats", "success");
			if(i!=null){
				json.put("success", "1");
			}else{
				json.put("success", "0");
			}
			return json.toJSONString();
		}else if(type==MusicConts.PLAY_ALUBM){
			con.setType(2);
			Collect i=playMusicDao.queryCollectForId(con);
			if(i!=null){
				json.put("stats", "success");
				json.put("success", "收藏成功！");
				return json.toJSONString();
			}
		}
		json.put("error", "收藏失败！");
		return json.toJSONString();
	}


	public Singer getSingerForId(String sid) {
		int singerid=Integer.parseInt(sid);
		return playMusicDao.getSingerForId(sid);
	}


	public String singerdata(HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		String id=request.getParameter("id");
		String type= request.getParameter("type");
		Map<String,Object> map = new HashMap<String,Object>();
		if("1".equals(type)){
			map.put("id", Integer.parseInt(id));
			map.put("type", 1);
			List<Song> song=playMusicDao.getSongForSinger(map);
			if(song!=null){
				json.put("stats", "success");
				json.put("list", song);
				json.put("size", song.size());
				return json.toJSONString();
			}
		}else if("2".equals(type)){
			map.put("id", Integer.parseInt(id));
			map.put("type", 1);
			List<Album> song=playMusicDao.getAlbumForSinger(map);
			if(song!=null){
				json.put("stats", "success");
				json.put("list", song);
				json.put("size", song.size());
				return json.toJSONString();
			}
			
		}else if("3".equals(type)){
			map.put("id", Integer.parseInt(id));
			map.put("type", 2);
			List<Song> song=playMusicDao.getSongForSinger(map);
			if(song!=null){
				json.put("stats", "success");
				json.put("list", song);
				json.put("size", song.size());
				return json.toJSONString();
			}
			
		}else if("4".equals(type)){
			map.put("id", Integer.parseInt(id));
			map.put("type", 2);
			List<Album> song=playMusicDao.getAlbumForSinger(map);
			if(song!=null){
				json.put("stats", "success");
				json.put("list", song);
				json.put("size", song.size());
				return json.toJSONString();
			}
			
		}
		json.put("error", "查询出错");
		return json.toJSONString();
	}

}