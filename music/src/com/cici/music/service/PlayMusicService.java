package com.cici.music.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.contans.MusicConts;
import com.cici.music.dao.IndexDao;
import com.cici.music.dao.PlayAlbumDao;
import com.cici.music.dao.PlayMusicDao;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.Collect;
import com.cici.music.pojo.Param;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.SongDto;
import com.cici.music.pojo.User;

@Service
public class PlayMusicService {
	@Resource
	PlayMusicDao playMusicDao;
	
	@Resource
	IndexDao indexDao;
	
	@Resource
	PlayAlbumDao playAlbumDao;
	
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


	public int getSingerAll(HttpServletRequest request) {
			List<Singer> list = playMusicDao.getSingerAll(new Param(0,0,"",1,0));
			if(list!=null)
				return list.size();
			return 0;
	}
	public 	List<Singer> getSingerAll() {
		List<Singer> list = playMusicDao.getSingerAll(new Param(0,0,"",1,0));
		return list;
}


	public String getSingerAllData(HttpServletRequest request) {
		String n1 = request.getParameter("n");
		int n=Integer.parseInt(n1);
		JSONObject json = new JSONObject();
		json.put("stats", "error");
		Param p=new Param(n*MusicConts.PAGER_COUNT,
				n*MusicConts.PAGER_COUNT+MusicConts.PAGER_COUNT,"",2,0);
		List<Singer> list = playMusicDao.getSingerAll(p);
		if(list!=null){
			json.put("stats", "success");
			json.put("list", list);
		}
		return json.toJSONString();
	}


	public String rangkingData() {
		JSONObject json = new JSONObject();
		List<SongDto> list1 =indexDao.getHotSong(new Param(0,50,"",0,0));
		List<SongDto> list2 =indexDao.getsongLimit(new Param(0,50,"",0,0));
		List<SongDto> list3 =playMusicDao.getCollectRanking(new Param(0,50,"",0,0));
		json.put("hot", list1.toArray());
		json.put("news", list2.toArray());
		json.put("rank", list3.toArray());
		return json.toJSONString();
	}


	public String musiclistForUid(HttpServletRequest request) {
		JSONObject json = new JSONObject();
		String uid= request.getParameter("uid");
		json.put("stats", "error");
		Param p=new Param(0,
				0,uid,2,0);
		List<Song> list1 = playMusicDao.getSongListForAlbumid(p);
		List<Song> list = playMusicDao.getMusicListForUid(p);
		Map<Integer,Object> map = new HashMap<Integer,Object>();
		for(Song s : list){
			map.put(s.getSid(), s);
		}
		for(Song s : list1){
			if(map.containsKey(s.getSid())){
				continue;
			}
			list.add(s);
		}
		if(list!=null){
			json.put("stats", "success");
			json.put("list", list);
		}
		return json.toJSONString();
	}


	public int insertSong(Song song) {
		int i= playMusicDao.insertSong(song);
		return i;
	}


	public int insertSinger(Singer song) {
		int i= playMusicDao.insertSinger(song);
		return i;
	}


	public void songCountAdd(int sid) {
		int i=playMusicDao.getClickCount(sid);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("sid", sid);
		map.put("type",1);
		map.put("updatetime", new Date());
		if(i>0){
			map.put("count", i+1);
			playMusicDao.ModifyClickUp(map);
			return;
		}
		map.put("count", 1);
		playMusicDao.ModifyClickAdd(map);
	}


	public String singerForName(HttpServletRequest request) {
		JSONObject json = new JSONObject();
		json.put("stats", "error");
		String name = request.getParameter("username");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("name",name);
		map.put("mohu", 1);
		List<Singer> list = playMusicDao.getSingerForParam(map);
		if(list!=null){
			json.put("stats", "success");
			json.put("list", list);
		}
		return json.toJSONString();
	}


	public int updateSinger(Singer song) {
		int i= playMusicDao.updateSinger(song);
		return i;
	}


	public int updateSong(Song song) {
		int i= playMusicDao.updateSong(song);
		return i;
	}

}
