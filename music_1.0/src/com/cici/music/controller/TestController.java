package com.cici.music.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cici.music.service.TestService;

@Controller
public class TestController {
	@Autowired
	TestService testService;
	@RequestMapping("index2")
	public String toIndex(HttpServletRequest request,Model model){
		
		return "index";
	}
	
	@RequestMapping("indexpage2")
	public String toIndexPage(HttpServletRequest request,Model model){
		
		return "indexPage";
	}
	
	@RequestMapping("query2")
	public String query(HttpServletRequest request,Model model){
		request.setAttribute("data",testService.getData(request));
		return "test";
	}


}
