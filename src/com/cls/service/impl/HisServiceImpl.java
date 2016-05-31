package com.cls.service.impl;

import java.util.List;

import com.cls.dao.HisDao;
import com.cls.pojo.His;
import com.cls.service.HisService;

public class HisServiceImpl implements HisService{
	private HisDao hisdao;
	
	public HisDao getHisdao() {
		return hisdao;
	}

	public void setHisdao(HisDao hisdao) {
		this.hisdao = hisdao;
	}

	public List<His> findbyHis(){
		return this.hisdao.findbyHis();
	}
}
