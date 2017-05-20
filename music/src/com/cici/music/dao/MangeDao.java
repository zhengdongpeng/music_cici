package com.cici.music.dao;

import com.cici.music.pojo.MUser;
import com.cici.music.pojo.User;

public interface MangeDao {

	public MUser queryMUser(MUser user);

	public int insertMUser(MUser user);

	public int updateMUser(MUser mu);

	public int delete(String str);

}
