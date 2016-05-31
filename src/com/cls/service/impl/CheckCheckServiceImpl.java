package com.cls.service.impl;


import com.cls.dao.CheckCheckDao;
import com.cls.pojo.CheckCheck;
import com.cls.service.CheckCheckService;

public class CheckCheckServiceImpl implements CheckCheckService{
	public CheckCheckDao checkdao;

	public CheckCheckDao getCheckdao() {
		return checkdao;
	}

	public void setCheckdao(CheckCheckDao checkdao) {
		this.checkdao = checkdao;
	}

	public boolean addcheckNum(int goodsId, int store) {
		return this.checkdao.addcheckNum(goodsId, store);
	}

	public CheckCheck findCheckbygoodId(int goodId) {
		return this.checkdao.findCheckbygoodId(goodId);
	}
	public boolean minuxcheckNum(int goodId,int store){
		return this.checkdao.minuxcheckNum(goodId, store);
	}
	
}
