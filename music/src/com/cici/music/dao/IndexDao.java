package com.cici.music.dao;

import java.util.List;

import com.cici.music.pojo.Param;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.SongDto;
import com.cici.music.pojo.Test;
import com.cici.music.pojo.Zhuanji;

public interface IndexDao {
	/**
	 * 鏈�柊鐨勫皥杓紝鍙栵紪鍊�
	 * @return
	 */
	List<Zhuanji> queryForNew();

	List<SongDto> getsong();

	List<SongDto> getHotSong(Param param);

	List<SongDto> getTypeSong();

}
