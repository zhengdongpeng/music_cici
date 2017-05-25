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
import com.cici.music.pojo.User;
import com.cici.music.service.IndexService;
import com.cici.music.service.MangeService;
import com.cici.music.service.PlayAlbumService;
import com.cici.music.service.PlayMusicService;
import com.cici.music.service.UserService;

@Controller
public class MangeController {
	@Autowired
	MangeService mangeService;
	@Autowired
	UserService userService;
	@Autowired
	PlayMusicService playMusicService;
	@Autowired
	PlayAlbumService playAlbumService;
	@Autowired
	IndexService indexService;

	@RequestMapping("mange")
	public String toIogin(HttpServletRequest request) {
		return "mange/mangelogin";
	}
	@RequestMapping("loginout")
	public String toIoginOut(HttpServletRequest request) {
		MUser user = (MUser) request.getSession().getAttribute("mange");
		if(user!=null){
			request.getSession().removeAttribute("mange");
		}
		return "mange/mangelogin";
	}

	@ResponseBody
	@RequestMapping("mangedelete")
	public String mangedelete(HttpServletRequest request) {
		return mangeService.delete(request);
		
	}
	

	@ResponseBody
	@RequestMapping("mangequery")
	public String mangequery(HttpServletRequest request) {
		String type = request.getParameter("type");
		String result=null;
		if("managequery".equals(type)){
			result = mangeService.queryForName(request);
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
		}
		return result;
		
	}
	
	@ResponseBody
	@RequestMapping("mangeModify")
	public String mangeModify(HttpServletRequest request) {
		String type = request.getParameter("type");
		String result=null;
		if("jibie".equals(type)){
			result = mangeService.updateMange(request);
		}
		return result;
		
	}

	@RequestMapping("mangepager")
	public String toMangepager(HttpServletRequest request) {
		return "mange/mange";
	}

	@RequestMapping("songmange")
	public String toSongmange(HttpServletRequest request) {
		request.setAttribute("zjid", playAlbumService.getAlbumAll());
		request.setAttribute("singerid", playMusicService.getSingerAll());
		return "mange/songmange";
	}
	
	@RequestMapping("albummange")
	public String toAlbummange(HttpServletRequest request) {
		request.setAttribute("singerid", playMusicService.getSingerAll());
		return "mange/albummange";
	}
	
	@RequestMapping("singermange")
	public String toSingermange(HttpServletRequest request) {
		return "mange/singermange";
	}

	@RequestMapping("usermange")
	public String tousermange(HttpServletRequest request) {
		request.setAttribute("count", userService.getUserTotal());
		return "mange/usermange";
	}

	@ResponseBody
	@RequestMapping("mangelogin")
	public String mangelogin(HttpServletRequest request) {
		MUser user = new MUser();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setYanzhengma(request.getParameter("yanzhengma"));
		return mangeService.login(user, request);
	}

	@ResponseBody
	@RequestMapping("createMange")
	public String createMange(HttpServletRequest request) {
		MUser user = new MUser();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setJibie(Integer.valueOf(request.getParameter("jibie")));
		return mangeService.createMange(user, request);
	}

	@ResponseBody
	@RequestMapping("upadateMange")
	public String upadateMange(HttpServletRequest request) {
		MUser user = new MUser();
		user.setUsername(request.getParameter("password1"));
		user.setPassword(request.getParameter("password2"));
		return mangeService.updateMange(user, request);
	}

	@ResponseBody
	@RequestMapping("queryUserMange")
	public String queryUserMange(HttpServletRequest request) {
		return userService.queryUserForType(request);
	}
}
