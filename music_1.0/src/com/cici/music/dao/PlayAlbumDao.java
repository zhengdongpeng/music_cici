package com.cici.music.dao;

import java.util.List;

import com.cici.music.pojo.Album;
import com.cici.music.pojo.Param;
import com.cici.music.pojo.Song;

public interface PlayAlbumDao {

	public Album getForId(int albumId);

	public List<Song> getMusicList(int parseInt);

	public List<Album> getAlbumAll(Param param);

	public List<Album> getAlbumListForUid(Param p);

	public int insertAlbum(Album song);

	public int deleteAlbum(String str);

	public List<Album> getAlbumColect(Param p);

	public int updateAlbum(Album song);

}
