package com.cici.music.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cici.music.pojo.User;
import com.cici.music.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping("login")
	public String getLogin(HttpServletRequest request,Model model){
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null){
			return "redirect:/index.do";
		}
		return "login";
	}
	@RequestMapping("userloginout")
	public String userloginout(HttpServletRequest request,Model model){
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null){
			request.getSession().removeAttribute("user");
		}
		return "redirect:/index.do";
	}
	@ResponseBody
	@RequestMapping("userdelete")
	public String userdelete(HttpServletRequest request){
		return userService.delete(request);
	}
	
	@RequestMapping("register")
	public String getRegister(HttpServletRequest request,Model model){
		return "register";
	}
	@RequestMapping("userCenter")
	public String getUserCenter(HttpServletRequest request,Model model){
		return "user_center/userCenter";
	}
	@RequestMapping("userCollect")
	public String getUserCollect(HttpServletRequest request,Model model){
		if(request.getSession().getAttribute("user")==null){
			return "redirect:/login.do";
		}
		return "user_center/userCollect";
	}
	@ResponseBody
	@RequestMapping("userHeadupload")
	public String userHeadupload(HttpServletRequest request){
		String type = request.getParameter("type");
		if("settting".equals(type)){
			String headUrl= request.getParameter("head");
			return userService.setHeadImg(request.getSession().getAttribute("user"),headUrl);
		}
		return "";
	}
	
	@ResponseBody
	@RequestMapping("userlogin")
	public String userLogin(HttpServletRequest request){
		User user=new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setYanzhengma(request.getParameter("yanzhengma"));
		return userService.login(user,request);
	}
	
	@ResponseBody
	@RequestMapping("modifyUser")
	public String modifyUser(HttpServletRequest request){
		User user=new User();
		user.setCity(request.getParameter("city"));
		user.setYanzhengma(request.getParameter("yanzhengma"));
		user.setSex(request.getParameter("sex"));
		user.setUname(request.getParameter("uname"));
		return userService.modify(user,request,request.getParameter("input1"));
	}
	
	@ResponseBody
	@RequestMapping("modifyPassword")
	public String modifyPassword(HttpServletRequest request){
		User user=new User();
		user.setPassword(request.getParameter("password"));
		user.setYanzhengma(request.getParameter("yanzhengma"));
		return userService.modifyPassword(user,request);
	}
	
	@ResponseBody
	@RequestMapping("userregister")
	public String userRegister(HttpServletRequest request){
		User user=new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setYanzhengma(request.getParameter("yanzhengma"));
		user.setEmail(request.getParameter("email"));
		user.setSex(request.getParameter("sex"));
		user.setUname(request.getParameter("uname"));
		return userService.register(user,request);
	}
}
