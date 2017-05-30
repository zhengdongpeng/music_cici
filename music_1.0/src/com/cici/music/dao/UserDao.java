package com.cici.music.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cici.music.pojo.User;

public interface UserDao {
	public User queryUser(User user);

	public User getName(User user);

	public int insertUser(User user);

	public int updateHeadImage(User user);

	public int updateUser(User user);

	public int updatePassword(User user);

	public int getUserTotal();

	public List<User> getUserForType(@Param("type") String type,@Param("username")  String username);

	public int delete(String str, int co);
}
