package com.cici.music.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

import com.alibaba.fastjson.JSONObject;
import com.cici.music.dao.UserDao;
import com.cici.music.pojo.User;

@Service
public class UserService {
	@Resource
	UserDao userDao;
	public String login(User user, HttpServletRequest request) {
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
		user.setCode(0);
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		User u=userDao.queryUser(user);
		if(u == null){
			json.put("error", "账号或密码不存在");
			return json.toJSONString();
		}
		
		if(user.getUsername().equals(u.getUsername())
				&& user.getPassword().equals(u.getPassword())){
			json.put("stats", "success");
			json.put("success", "��½�ɹ�");
			request.getSession().setAttribute("user", u);
		}else{
			json.put("error", "账号或密码不存在");
			return json.toJSONString();
		}
		return json.toJSONString();
	}
	public String register(User user, HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		if(!user.getYanzhengma().equalsIgnoreCase((String) request.getSession().getAttribute("verCode"))){
			json.put("error", "验证码错误");
			return json.toJSONString();
		}
		User u = userDao.getName(user);
		if(u!=null){
			json.put("error", "账号已经存在，请重新输入");
			return json.toJSONString();
		}
		user.setZctime(new Date());
		user.setHead("img/head/defaulthead1.png");
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		if(userDao.insertUser(user)>0){
			json.put("stats", "success");
			json.put("success", "注册成功");
		}
		return json.toJSONString();
	}
	public String setHeadImg(Object user, String headUrl) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		 if(user == null){
			json.put("error", "登录超时，请重新登录");
			return json.toJSONString();
		 }
		else if(!(user instanceof User)){
			json.put("error", "系统出现错误，请稍后再试");
			return json.toJSONString();
		}
		 User us=(User)user;
		 User u=new User();
		 u.setHead(headUrl);
		 u.setUid(us.getUid());
		int i= userDao.updateHeadImage(u);
		json.put("stats", "success");
		json.put("success", "修改成功");
		us.setHead(headUrl);
		return json.toJSONString();
	}
	public String modify(User user, HttpServletRequest request, String birth) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		if(!user.getYanzhengma().equalsIgnoreCase((String) request.getSession().getAttribute("verCode"))){
			json.put("error", "验证码错误");
			return json.toJSONString();
		}
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDay=null;
		try {
			if(birth!=null)
				birthDay= sd.parse(birth);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		user.setBirthday(birthDay);
		User u = (User) request.getSession().getAttribute("user");
		user.setUid(u.getUid());
		int i=userDao.updateUser(user);
		if(i>0){
			json.put("stats", "success");
			json.put("success", "修改成功！");
			return json.toJSONString();
		}else{
			json.put("error", "修改失败！");
		}
		
		return json.toJSONString();
	}
	public String modifyPassword(User user, HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		if(!user.getYanzhengma().equalsIgnoreCase((String) request.getSession().getAttribute("verCode"))){
			json.put("error", "验证码错误");
			return json.toJSONString();
		}
		User u = (User) request.getSession().getAttribute("user");
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		user.setUid(u.getUid());
		int i=userDao.updatePassword(user);
		if(i>0){
			json.put("stats", "success");
			json.put("success", "修改成功！");
			return json.toJSONString();
		}else{
			json.put("error", "修改失败！");
		}
		return json.toJSONString();
	}
	public int  getUserTotal() {
		return userDao.getUserTotal();
	}
	public String queryUserForType(HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		String type = request.getParameter("type");
		String username = request.getParameter("username");
		List<User> list = userDao.getUserForType(type,username);
		if(list==null || list.size()<=0){
			json.put("error", "未查询到信息");
			return json.toJSONString();
		}
		json.put("stats", "success");
		json.put("success", "修改成功！");
		json.put("list", list.toArray());
		return json.toJSONString();
	}
	public String delete(HttpServletRequest request) {
		JSONObject json =new JSONObject();
		json.put("stats", "error");
		String str = request.getParameter("id");
		String code = request.getParameter("code");
		int co=Integer.parseInt(code);
		if(co==1){
			co=0;
		}else{
			co=1;
		}
		int i=userDao.delete(str,co);
		if(i>0){
			json.put("stats", "success");
			json.put("success", "成功");
		}else{
			json.put("error", "不存在该账户");
		}
		return json.toJSONString();
	}

}
