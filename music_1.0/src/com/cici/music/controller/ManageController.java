package com.cici.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.contans.MusicConts;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.MUser;
import com.cici.music.pojo.Param;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.User;
import com.cici.music.service.IndexService;
import com.cici.music.service.ManageService;
import com.cici.music.service.PlayAlbumService;
import com.cici.music.service.PlayMusicService;
import com.cici.music.service.UserService;

@Controller
public class ManageController {
	@Autowired
	ManageService manageService;
	@Autowired
	UserService userService;
	@Autowired
	PlayMusicService playMusicService;
	@Autowired
	PlayAlbumService playAlbumService;
	@Autowired
	IndexService indexService;

	@RequestMapping("manage")
	public String toIogin(HttpServletRequest request) {
		return "manage/managelogin";
	}
	@RequestMapping("loginout")
	public String toIoginOut(HttpServletRequest request) {
		MUser user = (MUser) request.getSession().getAttribute("manage");
		if(user!=null){
			request.getSession().removeAttribute("manage");
		}
		return "manage/managelogin";
	}

	@ResponseBody
	@RequestMapping("managedelete")
	public String managedelete(HttpServletRequest request) {
		return manageService.delete(request);
		
	}
	@ResponseBody
	@RequestMapping("managequery")
	public String managequery(HttpServletRequest request) {
		String type = request.getParameter("type");
		String result=null;
		if("managequery".equals(type)){
			result = manageService.queryForName(request);
		}else if("singerquery".equals(type)){
			result = playMusicService.singerForName(request);
		}else if("albumquery".equals(type)){
			String name = request.getParameter("username");
			List<Album> album=indexService.getSearchAlbum(new Param(0,
					1000,name,0,0));
			JSONObject json = new JSONObject();
			json.put("stats", "success");
			json.put("list", album);
			result = json.toJSONString();
		}else if("songquery".equals(type)){
			String name = request.getParameter("username");
			List<Song> album=indexService.getSearchSong(new Param(0,
					1000,name,0,0));
			JSONObject json = new JSONObject();
			json.put("stats", "success");
			json.put("list", album);
			result = json.toJSONString();
		}
		return result;
	}
	@ResponseBody
	@RequestMapping("manageModify")
	public String manageModify(HttpServletRequest request) {
		String type = request.getParameter("type");
		String result=null;
		if("jibie".equals(type)){
			result = manageService.updatemanage(request);
		}
		return result;	
	}
	@RequestMapping("managepager")
	public String tomanagepager(HttpServletRequest request) {
		return "manage/manage";
	}

	@RequestMapping("songmanage")
	public String toSongmanage(HttpServletRequest request) {
	//	request.setAttribute("zjid", playAlbumService.getAlbumAll());
		//request.setAttribute("singerid", playMusicService.getSingerAll());
		return "manage/songmanage";
	}
	
	@RequestMapping("albummanage")
	public String toAlbummanage(HttpServletRequest request) {
		request.setAttribute("singerid", playMusicService.getSingerAll());
		return "manage/albummanage";
	}
	
	@RequestMapping("singermanage")
	public String toSingermanage(HttpServletRequest request) {
		return "manage/singermanage";
	}

	@RequestMapping("usermanage")
	public String tousermanage(HttpServletRequest request) {
		request.setAttribute("count", userService.getUserTotal());
		return "manage/usermanage";
	}
	@ResponseBody
	@RequestMapping("managelogin")
	public String managelogin(HttpServletRequest request) {
		MUser user = new MUser();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setYanzhengma(request.getParameter("yanzhengma"));
		return manageService.login(user, request);
	}
	@ResponseBody
	@RequestMapping("createmanage")
	public String createmanage(HttpServletRequest request) {
		MUser user = new MUser();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setJibie(Integer.valueOf(request.getParameter("jibie")));
		return manageService.createmanage(user, request);
	}

	@ResponseBody
	@RequestMapping("upadatemanage")
	public String upadatemanage(HttpServletRequest request) {
		MUser user = new MUser();
		user.setUsername(request.getParameter("password1"));
		user.setPassword(request.getParameter("password2"));
		return manageService.updatemanage(user, request);
	}

	@ResponseBody
	@RequestMapping("queryUsermanage")
	public String queryUsermanage(HttpServletRequest request) {
		return userService.queryUserForType(request);
	}
}
