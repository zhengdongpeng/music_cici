package com.cici.music.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.contans.MusicConts;
import com.cici.music.dao.MangeDao;
import com.cici.music.dao.PlayAlbumDao;
import com.cici.music.dao.PlayMusicDao;
import com.cici.music.pojo.MUser;
import com.cici.music.pojo.User;

@Service
public class MangeService {
	@Resource
	MangeDao mangeDao;
	@Resource
	PlayMusicDao playMusicDao;
	@Resource
	PlayAlbumDao playAlbumDao;
	
	public String login(MUser user, HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		if(StringUtils.isEmpty(user.getYanzhengma())){
			json.put("error", "验证码为空");
			return json.toJSONString();
		}if(StringUtils.isEmpty(user.getUsername())){
			json.put("error", "账号为空");
			return json.toJSONString();
		}else if(StringUtils.isEmpty(user.getPassword())){
			json.put("error", "密码为空");
			return json.toJSONString();
		}
		if(!user.getYanzhengma().equalsIgnoreCase((String) request.getSession().getAttribute("verCode"))){
			json.put("error", "验证码错误");
			return json.toJSONString();
		}
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		MUser u=mangeDao.queryMUser(user);
		if(u == null){
			json.put("error", "账号或密码不存在");
			return json.toJSONString();
		}
		
		if(user.getUsername().equals(u.getUsername())
				&& user.getPassword().equals(u.getPassword())){
			json.put("stats", "success");
			json.put("success", "��½�ɹ�");
			request.getSession().setAttribute("mange", u);
		}else{
			json.put("error", "账号或密码不存在");
			return json.toJSONString();
		}
		return json.toJSONString();
	}

	public String createMange(MUser user, HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
	if(StringUtils.isEmpty(user.getUsername())){
			json.put("error", "账号为空");
			return json.toJSONString();
		}else if(StringUtils.isEmpty(user.getPassword())){
			json.put("error", "密码为空");
			return json.toJSONString();
		}
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		user.setZctime(new Date());
		int i=mangeDao.insertMUser(user);
		if(i>0){
			json.put("stats", "success");
			json.put("success", "��½�ɹ�");
		}else{
			json.put("error", "账号或密码不存在");
			return json.toJSONString();
		}
		return json.toJSONString();
	}

	public String updateMange(MUser user, HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
	if(StringUtils.isEmpty(user.getUsername())){
			json.put("error", "旧密码为空");
			return json.toJSONString();
		}else if(StringUtils.isEmpty(user.getPassword())){
			json.put("error", "密码为空");
			return json.toJSONString();
		}
		user.setUsername(DigestUtils.md5DigestAsHex(user.getUsername().getBytes()));
		MUser m=(MUser) request.getSession().getAttribute("mange");
		MUser mu=new MUser();
		mu.setUsername(m.getUsername());
		mu.setPassword(user.getUsername());
		MUser u=mangeDao.queryMUser(mu);
		if(u==null){
			json.put("error", "旧密码错误");
			return json.toJSONString();
		}
		mu.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		int i=mangeDao.updateMUser(mu);
		if(i>0){
			json.put("stats", "success");
			json.put("success", "��½�ɹ�");
		}else{
			json.put("error", "账号或密码不存在");
			return json.toJSONString();
		}
		return json.toJSONString();
	}

	public String delete(HttpServletRequest request) {
		String type = request.getParameter("type");
		String result = "";
		JSONObject json =new JSONObject();
		String str = request.getParameter("username");
		json.put("stats", "error");
		int i = 0;
		if (MusicConts.TYPE_SONG.equals(type)) {
			i=playMusicDao.delete(str);
		}else if(MusicConts.TYPE_SINGER.equals(type)){
			i=playMusicDao.deleteSinger(str);
		}else if(MusicConts.TYPE_ALBUM.equals(type)){
			i=playAlbumDao.deleteAlbum(str);
		}
		else {
			 i=mangeDao.delete(str);
		}
		if(i>0){
			json.put("stats", "success");
			json.put("success", "成功");
		}else{
			json.put("error", "不存在");
		}
		return json.toJSONString();
	}

	public String queryForName(HttpServletRequest request) {
		JSONObject json =new JSONObject();
		String name = request.getParameter("username");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("name", name);
		map.put("type", MusicConts.QUERY_ALL);
		map.put("like_",MusicConts.QUERY_LIKE );
		List<MUser> user = mangeDao.queryMuser(map);
		json.put("list", user.toArray());
		return json.toJSONString();
	}

	public String updateMange(HttpServletRequest request) {
		
		JSONObject json =new JSONObject();
		String name = request.getParameter("username");
		String jibie = request.getParameter("jibie");
		json.put("stats", "error");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("username", name);
		map.put("jibie",jibie );
		int i=mangeDao.updateMJibie(map);
		if(i>0){
			json.put("stats", "success");
			json.put("success", "成功");
		}else{
			json.put("error", "不存在");
		}
		return json.toJSONString();
	}

	
}
