package com.cici.music.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.contans.MusicConts;
import com.cici.music.pojo.Param;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.pojo.User;
import com.cici.music.pojo.Album;
import com.cici.music.service.IndexService;
@Controller
public class IndexController {
	@Autowired
	IndexService indexService;
	
	@RequestMapping("index")
	public String toIndex(HttpServletRequest request,Model model){
		List<Album> zList=indexService.getNewZhuanji();
		request.setAttribute("zuixinzj", zList);
		return "index";
	}
	
	@RequestMapping("gameintro")
	public String gameintro(HttpServletRequest request,Model model){
		return "gameintro";
	}
	@RequestMapping("clasify")
	public String clasify(HttpServletRequest request,Model model){
		return "clasify";
	}
	
	@ResponseBody
	@RequestMapping("searchlist")
	public String searchlist(HttpServletRequest request,Model model){
		String type=request.getParameter("type");
		int pager = Integer.valueOf(request.getParameter("pager"));
		String val =request.getParameter("val");
		JSONObject json = new JSONObject();
		if(MusicConts.TYPE_SONG.equals(type)){
			List<Song> song=indexService.getSearchSong(new Param(pager*MusicConts.PAGER_COUNT,
					pager*MusicConts.PAGER_COUNT+MusicConts.PAGER_COUNT,val,0,0));
			json.put("list", song);
		}else if(MusicConts.TYPE_ALBUM.equals(type)){
			List<Album> album=indexService.getSearchAlbum(new Param(pager*MusicConts.PAGER_COUNT,
					pager*MusicConts.PAGER_COUNT+MusicConts.PAGER_COUNT,val,0,0));
			json.put("list", album);
		}else if(MusicConts.TYPE_SINGER.equals(type)){
			List<Singer> singer=indexService.getSearchSinger(new Param(pager*MusicConts.PAGER_COUNT,
					pager*MusicConts.PAGER_COUNT+MusicConts.PAGER_COUNT,val,0,0));
			json.put("list", singer);

		}
		
		return json.toJSONString();
	}
	
	@RequestMapping("search")
	public String toSearch(HttpServletRequest request,String type,String value){
		if(StringUtils.isEmpty(type)){
			
		}else{
			if(StringUtils.isEmpty(value)){
				request.setAttribute("type", null);
				request.setAttribute("size", 0);
			}
			try {
				value = new String(value.getBytes("iso-8859-1"), "utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}  
			request.setAttribute("value", value);
			if(MusicConts.TYPE_SONG.equals(type)){
				List<Song> song=indexService.getSearchSong(new Param(0,20,value,0,0));
				request.setAttribute("type", MusicConts.TYPE_SONG);
				request.setAttribute("size", indexService.getSearchCount(value,1));
				request.setAttribute("list", song);
			}else if(MusicConts.TYPE_ALBUM.equals(type)){
				List<Album> album=indexService.getSearchAlbum(new Param(0,20,value,0,0));
				request.setAttribute("type", MusicConts.TYPE_ALBUM);
				request.setAttribute("list", album);
				request.setAttribute("size", indexService.getSearchCount(value,2));
			}else if(MusicConts.TYPE_SINGER.equals(type)){
				List<Singer> singer=indexService.getSearchSinger(new Param(0,20,value,0,0));
				request.setAttribute("type", MusicConts.TYPE_SINGER);
				request.setAttribute("list", singer);
				request.setAttribute("size", indexService.getSearchCount(value,3));

			}
		}
		return "search";
	}
	
	/**
	 * �������ǰ̨���������������������ajax����������Ҫ����@ResponseBodyע�⣬����صľ����ַ�
	 * ����jspҳ�������
	 * @param request
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("aaa")
	public String toaaa(HttpServletRequest request,Model model){
		return indexService.getNewSong();
	}
	
	@ResponseBody
	@RequestMapping("rightview")
	public String toRightView(HttpServletRequest request,Model model){
		User user=(User) request.getSession().getAttribute("user");
		if(user==null){
			return indexService.getRecommend();
		}else{
			return indexService.getCollectSong(user);
		}
	}
	
	/**
	 * ��ȡ�в��ļ����б�����
	 * @param request
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("middlelist")
	public String toMiddlelist(HttpServletRequest request,Model model){
		return indexService.getMiddleList();
	}
	
	@ResponseBody
	@RequestMapping("rightsinger")
	public String getRightsinger(HttpServletRequest request,Model model){
		return indexService.getRightSinger();
	}
}
