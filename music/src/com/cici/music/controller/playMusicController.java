package com.cici.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.Album;
import com.cici.music.pojo.User;
import com.cici.music.service.PlayMusicService;

@Controller
public class playMusicController {
	@Autowired
	PlayMusicService playMusicService;
	
	@RequestMapping("playMusic")
	public String toIndex(HttpServletRequest request,Model model){
		int songId=Integer.parseInt(request.getParameter("id"));
		Song song=playMusicService.getSongForId(songId);
		if(song!=null)
		{
			playMusicService.songCountAdd(song.getSid());
			request.setAttribute("song", song);
			return "playMusic";
		}else{	
			return "404";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("musiclistForUid")
	public String musiclistForUid(HttpServletRequest request){
		return playMusicService.musiclistForUid(request);
	}
	
	@RequestMapping("ranking")
	public String toRanking(HttpServletRequest request){
		return "Ranking";
	}
	@RequestMapping("playMusicList")
	public String playMusicList(HttpServletRequest request){
		return "playMusicList";
	}
	
	@ResponseBody
	@RequestMapping("rankingData")
	public String rankingData(HttpServletRequest request){
		return playMusicService.rangkingData();
	}
	
	@RequestMapping("singer")
	public String toSinger(HttpServletRequest request,String sid){
		if(StringUtils.isEmpty(sid)){
			return "redirect:/index.do";
		}
		Singer singer=playMusicService.getSingerForId(sid);
		if(singer==null){
			return "redirect:/index.do";
		}
		request.setAttribute("singer", singer);
		return "singer";
	}
	
	@RequestMapping("singerlist")
	public String singerlist(HttpServletRequest request){
		request.setAttribute("size", playMusicService.getSingerAll(request));
		return "singerList";
	}
	
	
	@ResponseBody
	@RequestMapping("singerlistData")
	public String singerlistData(HttpServletRequest request){
		return playMusicService.getSingerAllData(request);
	}
	@ResponseBody
	@RequestMapping("singerdata")
	public String singerdata(HttpServletRequest request){
		
		return playMusicService.singerdata(request);
	}
	
	@ResponseBody
	@RequestMapping("collect")
	public String collect(HttpServletRequest request){

		return playMusicService.collect(request);
	}
	
	@ResponseBody
	@RequestMapping("iscollect")
	public String iscollect(HttpServletRequest request){
		
		return playMusicService.iscollect(request);
	}
	
	@ResponseBody
	@RequestMapping("quitcollect")
	public String quitcollect(HttpServletRequest request){
			return playMusicService.deleteCollect(request);
	}

}
