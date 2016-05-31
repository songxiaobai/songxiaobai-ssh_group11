package com.cls.service.impl;

import com.cls.dao.StockDao;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.Gys;
import com.cls.service.StockService;

public class StockServiceImpl implements StockService{
	public StockDao stockdao;

	public StockDao getStockdao() {
		return stockdao;
	}

	public void setStockdao(StockDao stockdao) {
		this.stockdao = stockdao;
	}

	public boolean doIns(GoodInfo pojo) {
		return this.stockdao.doIns(pojo);
	}

	public GoodInfo findById(int goodId) {
		return this.stockdao.findById(goodId);
	}

	public Gys findbyId(int gysId) {
		return this.stockdao.findbyId(gysId);
	}
	
}
