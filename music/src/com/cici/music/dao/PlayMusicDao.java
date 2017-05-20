package com.cici.music.dao;

import java.util.List;
import java.util.Map;

import com.cici.music.pojo.Album;
import com.cici.music.pojo.Collect;
import com.cici.music.pojo.Param;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.SongDto;

public interface PlayMusicDao {

	public Song getForId(int songId);

	public int insertConllectSong(Collect con);

	public int insertConllectAlubm(Collect con);
	
	public Collect queryCollectForId(Collect con);
	public List<Collect> queryCollectAll(Collect con);

	public Singer getSingerForId(String sid);

	public List<Album> getAlbumForSinger(Map<String, Object> map);
	public List<Song> getSongForSinger(Map<String, Object> map);

	public List<Singer> getSingerAll(Param param);
	
	public List<Song> getSongByType(Param param);


	public List<SongDto> getCollectForUid(Param param);

	public List<SongDto> getCollectRanking(Param param);

	public List<Song> getMusicListForUid(Param p);

	public int insertSong(Song song);

	public int delete(String str);
	
	public int deleteSinger(String str);

	public int insertSinger(Singer song);

	public int getClickCount(int sid);

	public void ModifyClickAdd(Map<String, Object> map);

	public void ModifyClickUp(Map<String, Object> map);



}
