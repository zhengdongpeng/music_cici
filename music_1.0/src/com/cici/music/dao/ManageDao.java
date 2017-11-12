package com.cici.music.dao;

import java.util.List;
import java.util.Map;

import com.cici.music.pojo.MUser;
import com.cici.music.pojo.User;

public interface ManageDao {

	public MUser queryMUser(MUser user);

	public int insertMUser(MUser user);

	public int updateMUser(MUser mu);

	public int delete(String str);

	public List<MUser> queryMuser(Map<String, Object> map);

	public int updateMJibie(Map<String, Object> map);

}
