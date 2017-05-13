package com.cici.music.dao;

import java.util.List;

import com.cici.music.pojo.Collect;
import com.cici.music.pojo.Song;

public interface PlayMusicDao {

	public Song getForId(int songId);

	public int insertConllectSong(Collect con);

	public int insertConllectAlubm(Collect con);
	
	public Collect queryCollectForId(Collect con);
	public List<Collect> queryCollectAll(Collect con);

}
