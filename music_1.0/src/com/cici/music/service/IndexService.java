package com.cici.music.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.cici.music.contans.MusicConts;
import com.cici.music.dao.IndexDao;
import com.cici.music.dao.PlayMusicDao;
import com.cici.music.pojo.Param;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.SongDto;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.TypeNum;
import com.cici.music.pojo.User;

@Service
public class IndexService {
	@Resource
	IndexDao indexDao;
	@Resource
	PlayMusicDao playMusicDao;
	
	
	public List<Album> getNewZhuanji() {
		return indexDao.queryForNew();
	}

	public String getNewSongToJson() {
	//	List<>indexDao.queryForNewSongLen15();
		return null;
	}

	public String getNewSong() {
		List<SongDto> list=indexDao.getsong();
		List<SongDto> listhot=indexDao.getHotSong(new Param(0,10,null,0,0));
		List<SongDto> list3=indexDao.getTypeSong(new Param(0,10,null,0,4));
		JSONObject bbb=new JSONObject();
		JSONArray array=new JSONArray();
		array.add(list.toArray());
		bbb.put("ccc_c", array);
		JSONArray array1=new JSONArray();
		array1.add(listhot.toArray());
		bbb.put("hotsong",array1 );
		JSONArray array2=new JSONArray();
		array2.add(list3.toArray());
		bbb.put("typesong",array2);
		return bbb.toJSONString();
	}


	/**
	 * ��ȡ�Ƽ�  �Ƽ���ȡ�Ǹ�ݵ���������Ȼ������ȡ10�����
	 * @return
	 */
	public String getRecommend() {
		List<SongDto> list=indexDao.getHotSong(new Param(0,6,null,1,0));
		JSONArray array=new JSONArray();
		array.add(list);
		JSONObject obj=new JSONObject();
		obj.put("recommend",array);
		return obj.toJSONString();
	}

	public String getCollectSong(User user) {
		List<SongDto> list=playMusicDao.getCollectForUid(new Param(0,10,user.getUid()+"",1,0));
		JSONArray array=new JSONArray();
		array.add(list);
		JSONObject obj=new JSONObject();
		obj.put("recommend",array);
		return obj.toJSONString();
	}

	public String getMiddleList() {
		List<SongDto> list1=indexDao.getTypeSong(new Param(0,50,null,0,6));
		List<SongDto> list2=indexDao.getTypeSong(new Param(0,50,null,0,4));
		List<SongDto> list3=indexDao.getTypeSong(new Param(0,50,null,0,7));
		List<SongDto> list4=indexDao.getTypeSong(new Param(0,50,null,0,8));
		JSONObject  obj=new JSONObject();
		obj.put("list1",list1.toArray());
		obj.put("list2",list2.toArray());
		obj.put("list3",list3.toArray());
		obj.put("list4", list4.toArray());
		return obj.toJSONString();
	}

	public String getRightSinger() {
		List<Singer> singer=indexDao.getSinger(new Param(0,18,null,0,0));
		List<Singer> head=new ArrayList<Singer>();
		for(int i=0;i<singer.size();i++){
			if(i<2){
				head.add(singer.get(i));
			}else
				break;
		}
		JSONObject  obj=new JSONObject();
		obj.put("head", head.toArray());
		obj.put("singer", singer.toArray());
		obj.put("url", "playMusic.do");
		String o= obj.toJSONString(obj,SerializerFeature.DisableCircularReferenceDetect);
		return o;
	}

	public List<Song> getSearchSong(Param param) {
		return indexDao.getSearchSong(param);
	}


	public List<Singer> getSearchSinger(Param param) {
		return indexDao.getSearchSinger(param);
	}

	public List<Album> getSearchAlbum(Param param) {
		return indexDao.getSearchAlbum(param);
	}

	public int getSearchCount(String value,int type) {
		Map<String,Object> map =new HashMap<String,Object>();
		map.put("value", value);
		map.put("type", type);
		return indexDao.getSearchCount(map);
	}

	public Map<Integer,Integer>  getNum() {
		List<TypeNum> typenum = indexDao.getTypeNum();
		Map<Integer,Integer> map = new HashMap<Integer,Integer>();
		for(TypeNum t : typenum){
			int num = 0;
			if(t.getValue_()%MusicConts.PAGER_COUNT==0){
				num=t.getValue_()/MusicConts.PAGER_COUNT;
			}else{
				num =t.getValue_()/MusicConts.PAGER_COUNT+1;
			}
			map.put(t.getKey_(),num);
		}
		return map;
	}

	public String getClasifySong(HttpServletRequest request) {
		JSONObject  obj=new JSONObject();
		obj.put("stats", "error");
		int type = Integer.parseInt(request.getParameter("type"));
		int n =  Integer.parseInt(request.getParameter("n"));
		List<Song> song = playMusicDao.getSongByType(new Param(MusicConts.PAGER_COUNT*n,MusicConts.PAGER_COUNT,type+"",0,0));
		if(song.size()>0){
			obj.put("stats", "success");
			obj.put("success", "查找成功！");
			obj.put("list",song);
		}
		return obj.toJSONString();
	}
	
	

}
