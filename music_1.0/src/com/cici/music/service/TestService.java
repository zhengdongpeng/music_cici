package com.cici.music.service;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cici.music.dao.TestDao;
import com.cici.music.pojo.Test;


@Service
public class TestService {
	
	@Resource
	private TestDao testDao;

	public List<Test>  getData(HttpServletRequest request) {
		Test t=new Test();
		t.setName(request.getParameter("name"));
		return testDao.queryForName(t);
	}

}
