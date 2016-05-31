package com.cls.service.impl;

import java.util.List;

import com.cls.dao.GysDao;
import com.cls.pojo.Gys;
import com.cls.service.GysService;

public class GysServiceImpl implements GysService{
	public GysDao gysdao;
	

	public GysDao getGysdao() {
		return gysdao;
	}

	public void setGysdao(GysDao gysdao) {
		this.gysdao = gysdao;
	}

	public List<Gys> findByName() {
		return this.gysdao.findByName();
	}

	public int findCountByName(String gysName) {
		return this.gysdao.findCountByName(gysName);
	}

	public List<Gys> findbyName(String gysName, int pagecount, int pagesize) {
		return this.gysdao.findbyName(gysName, pagecount, pagesize);
	}

}
