package com.cici.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cici.music.pojo.Song;
import com.cici.music.pojo.User;
import com.cici.music.pojo.Zhuanji;
import com.cici.music.service.IndexService;
@Controller
public class IndexController {
	@Autowired
	IndexService indexService;
	
	@RequestMapping("index")
	public String toIndex(HttpServletRequest request,Model model){
		List<Zhuanji> zList=indexService.getNewZhuanji();
		request.setAttribute("zuixinzj", zList);
		return "index";
	}
	
	/**
	 * 负责接收前台传来的请求，这个请求属于ajax请求，所以需要加上@ResponseBody注解，这样返回的就是字符串
	 * 而不是jsp页面的名字
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
			return indexService.getCollectSong();
		}
	}
	
}
