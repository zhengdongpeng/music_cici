package com.cici.music.dao;

import java.util.List;
import java.util.Map;

import com.cici.music.pojo.Param;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.SongDto;
import com.cici.music.pojo.Album;

public interface IndexDao {
	/**
	 * 鏈�柊鐨勫皥杓紝鍙栵紪鍊�
	 * @return
	 */
	List<Album> queryForNew();

	List<SongDto> getsong();

	List<SongDto> getHotSong(Param param);

	List<SongDto> getTypeSong(Param param);

	List<Singer> getSinger(Param param);

	List<Song> getSearchSong(Param param);

	List<Singer> getSearchSinger(Param param);

	List<Album> getSearchAlbum(Param param);

	int getSearchCount(Map<String, Object> map);

	List<com.cici.music.pojo.TypeNum> getTypeNum();


}
