package com.cici.music.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.cici.music.service.UserService;

@Controller
public class UploadController {
	@Autowired
	UserService userService;
	/*
     * 采用file.Transto 来保存上传的文件
     */
    @RequestMapping("fileUpload")
    public String  fileUpload2(@RequestParam("file") CommonsMultipartFile file,
    		HttpServletRequest request) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("/img/head");
        String imgName=new Date().getTime()+file.getOriginalFilename();
        path=path+"/"+imgName;
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        userService.setHeadImg(request.getSession().getAttribute("user"),"img/head/"+ imgName);
        return "redirect:/userCenter.do"; 
    }
}
