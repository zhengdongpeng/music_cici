package com.cici.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cici.music.pojo.Song;
import com.cici.music.pojo.Album;
import com.cici.music.service.PlayAlbumService;
import com.cici.music.service.PlayMusicService;

@Controller
public class playAlubmController {
	@Autowired
	PlayAlbumService playAlbumService;
	
	@RequestMapping("playAlbum")
	public String toIndex(HttpServletRequest request,Model model){
		int albumId=Integer.parseInt(request.getParameter("id"));
		Album album=playAlbumService.getAlbumForId(albumId);
		if(album!=null)
		{
			request.setAttribute("album", album);
			return "playAlbum";
		}else{	
			return "404";
		}
	}
	
	@RequestMapping("albumList")
	public String toAlbumList(HttpServletRequest request,Model model){
		request.setAttribute("size", playAlbumService.getAlbumAll(request,1));
			return "AlbumList";
	}
	
	@ResponseBody
	@RequestMapping("albumListData")
	public String albumListData(HttpServletRequest request){
		return playAlbumService.albumListData(request);
	}
	
	@ResponseBody
	@RequestMapping("albumlistForUid")
	public String albumlistForUid(HttpServletRequest request){
		return playAlbumService.albumlistForUid(request);
	}
	
	@ResponseBody
	@RequestMapping("musicList")
	public String musicList(HttpServletRequest request){
		return playAlbumService.musicList(request);
	}
	
	@ResponseBody
	@RequestMapping("albumCollect")
	public String albumCollect(HttpServletRequest request){
		return playAlbumService.albumCollect(request);
	}
	

}
