package com.cici.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
