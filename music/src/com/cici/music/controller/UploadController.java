package com.cici.music.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.cici.music.pojo.Album;
import com.cici.music.pojo.Singer;
import com.cici.music.pojo.Song;
import com.cici.music.service.PlayAlbumService;
import com.cici.music.service.PlayMusicService;
import com.cici.music.service.UserService;

@Controller
public class UploadController {
	@Autowired
	UserService userService;
	@Autowired
	PlayMusicService playMusicService;
	@Autowired
	PlayAlbumService playAlbumService;
	
	
	/*
     * 采用file.Transto 来保存上传的文件
     */
    @RequestMapping("fileUpload")
    public String  fileUpload2(@RequestParam("file") CommonsMultipartFile file,
    		HttpServletRequest request) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("/img/head");
        String[] tail=file.getOriginalFilename().split("\\.");
        String t = tail[tail.length-1];
        String imgName=new Date().getTime()+"."+t;;
        path=path+"/"+imgName;
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        userService.setHeadImg(request.getSession().getAttribute("user"),"img/head/"+ imgName);
        return "redirect:/userCenter.do"; 
    }
    
    @RequestMapping("fileUploadSong")
    public String  fileUploadSong(@RequestParam("file") CommonsMultipartFile file,
    		@RequestParam("file2") CommonsMultipartFile file2,
    		HttpServletRequest request) throws IOException {
    	String type = request.getParameter("type");
    	Song song = new Song();
    	if("1".equals(type)){  //创建
    		 String path = request.getSession().getServletContext().getRealPath("/img/song");
    		 String imgName=new Date().getTime()+"abc";
    		 /**
    		  *处理
    		  */
    		 String[] tail=file.getOriginalFilename().split("\\.");
    		 String t = tail[tail.length-1];
    	       String Songpath=path+"/song/"+imgName+"."+t;
    	        File newFile=new File(Songpath);
    	        file.transferTo(newFile);
    	        song.setSong("img/song/song/"+imgName+"."+t);
    	        String[] tailh=file2.getOriginalFilename().split("\\.");
       		 String th = tailh[tailh.length-1];
       	       String headpath=path+"/head/"+imgName+"."+th;
       	       System.out.println(Songpath+","+headpath);
       	        File headFile=new File(headpath);
       	        file2.transferTo(headFile);
    	        song.setImg("img/song/head/"+imgName+"."+th);
    	        
    	        String songname =request.getParameter("songname1");
    	        String fxgs =request.getParameter("fxgs");
    	        String zid =request.getParameter("zid");
    	        String fbtime =request.getParameter("fbtime");
    	        String songtype =request.getParameter("songtype");
    	        String singer =request.getParameter("singer1");
    	        String geci =request.getParameter("geci");
    	        song.setLyric(geci);
    	        song.setFbtime(new Date());
    	        song.setFxgs(fxgs);
    	        song.setSname(songname);
    	        song.setZjid(StringUtils.isEmpty(zid)?0:Integer.parseInt(zid));
    	        song.setSongerid(Integer.parseInt(singer));
    	        song.setType(Integer.parseInt(songtype));
    	        song.setCjtime(new Date());
    	       int i= playMusicService.insertSong(song);
    	       if(i>0){
    	    	   request.setAttribute("result", "上传成功");
    	       }else{
    	    	   request.setAttribute("result", "上传失败"); 
    	       }
    	       request.setAttribute("url", "songmange.do");
    	        return  "mange/result";
    	}else if("2".equals(type)){   //修改
    		
    		String path = request.getSession().getServletContext().getRealPath("/img/song");
    		String imgName=new Date().getTime()+"so";
    		if(file.getSize()>0){
    			String[] tail=file.getOriginalFilename().split("\\.");
    			String t = tail[tail.length-1];
    			String Songpath=path+"/song/"+imgName+"."+t;
    			File newFile=new File(Songpath);
    			file.transferTo(newFile);
    			song.setSong("img/song/song/"+imgName+"."+t);
    			
    		}
    		if(file2.getSize()>0){
    			String[] tailh=file2.getOriginalFilename().split("\\.");
    			String th = tailh[tailh.length-1];
    			String headpath=path+"/head/"+imgName+"."+th;
    			File headFile=new File(headpath);
    			file2.transferTo(headFile);
    			song.setImg("img/song/head/"+imgName+"."+th);
    		}
   	        String sid = request.getParameter("songid");
   	        String songname =request.getParameter("songname1");
   	        String fxgs =request.getParameter("fxgs");
   	        String zid =request.getParameter("zid");
   	        String songtype =request.getParameter("songtype");
   	        String singer =request.getParameter("singer1");
   	        String geci =request.getParameter("geci");
   	        song.setLyric(geci);
   	        song.setSid(Integer.parseInt(sid));
   	        song.setFxgs(fxgs);
   	        song.setSname(songname);
   	        song.setZjid(StringUtils.isEmpty(zid)?0:Integer.parseInt(zid));
   	        song.setSongerid(StringUtils.isEmpty(singer)?0:Integer.parseInt(singer));
   	        song.setType(Integer.parseInt(songtype));
   	       int i= playMusicService.updateSong(song);
   	       if(i>0){
   	    	   request.setAttribute("result", "上传成功");
   	       }else{
   	    	   request.setAttribute("result", "上传失败"); 
   	       }
   	       request.setAttribute("url", "songmange.do");
   	        return  "mange/result";
   	}
    	return  "mange/result";
    }
    
    @RequestMapping("fileUploadAlbum")
    public String  fileUploadAlbum(@RequestParam("file") CommonsMultipartFile file,
    		HttpServletRequest request) throws IOException {
    	String type = request.getParameter("type");
    	Album song = new Album();
    	if("1".equals(type)){
    		 String path = request.getSession().getServletContext().getRealPath("/img/zhuanji");
    		 String imgName=new Date().getTime()+"zj";
    		 String[] tail=file.getOriginalFilename().split("\\.");
    		 String t = tail[tail.length-1];
    	       String Songpath=path+"/head/"+imgName+"."+t;
    	        File newFile=new File(Songpath);
    	        file.transferTo(newFile);
    	        song.setImg("img/zhuanji/head/"+imgName+"."+t);
    	        String songname =request.getParameter("albumname1");
    	        String fxgs =request.getParameter("fxgs");
    	        String singer =request.getParameter("singer1");
    	        String js =request.getParameter("js");
    	        song.setFbtime(new Date());
    	        song.setFxgs(fxgs);
    	        song.setCjtime(new Date());
    	        song.setAname(songname);
    	        song.setJs(js);
    	        song.setSongerId(Integer.parseInt(singer));
    	       int i= playAlbumService.insertAlbum(song);
    	       if(i>0){
    	    	   request.setAttribute("result", "上传成功");
    	       }else{
    	    	   request.setAttribute("result", "上传失败"); 
    	       }
    	       request.setAttribute("url", "albummange.do");
    	        return  "mange/result";
    	}else if("2".equals(type)){
    		if(file.getSize()>0){
    			String path = request.getSession().getServletContext().getRealPath("/img/zhuanji");
    			String imgName=new Date().getTime()+"zj";
    			String[] tail=file.getOriginalFilename().split("\\.");
    			String t = tail[tail.length-1];
    			String Songpath=path+"/head/"+imgName+"."+t;
    			File newFile=new File(Songpath);
    			file.transferTo(newFile);
    			song.setImg("img/zhuanji/head/"+imgName+"."+t);
    		}
    		String albumid = request.getParameter("albumid");
   	        String songname =request.getParameter("albumname1");
   	        String fxgs =request.getParameter("fxgs");
   	        String singer =request.getParameter("singer1");
   	        String js =request.getParameter("js");
   	        js = js.replace("/\n|\r\n/g","<br>");  
   	        song.setFxgs(fxgs);
   	        song.setAname(songname);
   	        song.setJs(js);
   	        song.setAlbumId(Integer.parseInt(albumid));
   	        song.setSongerId(Integer.parseInt(singer));
   	       int i= playAlbumService.updateAlbum(song);
   	       if(i>0){
   	    	   request.setAttribute("result", "修改成功");
   	       }else{
   	    	   request.setAttribute("result", "修改失败"); 
   	       }
   	       request.setAttribute("url", "albummange.do"); //second
   	        return  "mange/result"; //first
   	}
    	return  "mange/result";
    }
    
    @RequestMapping("fileUploadSinger")
    public String  fileUploadSinger(@RequestParam("file") CommonsMultipartFile file,
    		HttpServletRequest request) throws IOException {
    	String type = request.getParameter("type");
    	Singer song = new Singer();
    	if("1".equals(type)){
    		 String path = request.getSession().getServletContext().getRealPath("/img/singer");
    		 String imgName=new Date().getTime()+"zj";
    		 /**
    		  *处理
    		  */
    		 String[] tail=file.getOriginalFilename().split("\\.");
    		 String t = tail[tail.length-1];
    	       String Songpath=path+"/head/"+imgName+"."+t;
    	        File newFile=new File(Songpath);
    	        file.transferTo(newFile);
    	        song.setHead("img/singer/head/"+imgName+"."+t);
    	        String songname =request.getParameter("singername1");
    	        String sex =request.getParameter("sex");
    	        String fbtime =request.getParameter("fbtime");
    	        String songtype =request.getParameter("typeid");
    	        String js =request.getParameter("js");
    	        song.setSname(songname);
    	        song.setJieshao(js);
    	        song.setSex(sex);
    	       int i= playMusicService.insertSinger(song);
    	       if(i>0){
    	    	   request.setAttribute("result", "上传成功");
    	       }else{
    	    	   request.setAttribute("result", "上传失败"); 
    	       }
    	       request.setAttribute("url", "singermange.do");
    	        return  "mange/result";
    	}else if("2".equals(type)){
    		if(file.getSize()>0){
    			String path = request.getSession().getServletContext().getRealPath("/img/singer");
    			String imgName=new Date().getTime()+"zj";
    			String[] tail=file.getOriginalFilename().split("\\.");
    			String t = tail[tail.length-1];
    			String Songpath=path+"/head/"+imgName+"."+t;
    			File newFile=new File(Songpath);
    			file.transferTo(newFile);
    			song.setHead("img/singer/head/"+imgName+"."+t);
    		}
	        String songname =request.getParameter("singername1");
	        String sid=request.getParameter("singerid");
	        String sex =request.getParameter("sex");
	        String js =request.getParameter("js");
	        song.setSname(songname);
	        song.setJieshao(js);
	        song.setSex(sex);
	        song.setSid(Integer.parseInt(sid));
	       int i= playMusicService.updateSinger(song);
	       if(i>0){
	    	   request.setAttribute("result", "修改成功");
	       }else{
	    	   request.setAttribute("result", "修改失败"); 
	       }
	       request.setAttribute("url", "singermange.do");
	        return  "mange/result";
    	}
    	return  "mange/result";
    }
}
