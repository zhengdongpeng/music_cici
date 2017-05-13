package com.cici.music.dao;

import com.cici.music.pojo.User;

public interface UserDao {
	public User queryUser(User user);

	public User getName(User user);

	public int insertUser(User user);

	public int updateHeadImage(User user);

	public int updateUser(User user);

	public int updatePassword(User user);
}
