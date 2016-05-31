package com.cls.service.impl;

import java.util.List;

import com.cls.dao.GoodInfoDao;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.GoodType;
import com.cls.service.GoodInfoService;


public class ServiceImpl implements GoodInfoService{
	public GoodInfoDao goodinfoDao;
		

	

	public GoodInfoDao getGoodinfoDao() {
		return goodinfoDao;
	}

	public void setGoodinfoDao(GoodInfoDao goodinfoDao) {
		this.goodinfoDao = goodinfoDao;
	}

	public boolean doDel(int goodId) {
		return this.goodinfoDao.doDel(goodId);
	}

	public boolean doIns(GoodInfo pojo) {
		return this.goodinfoDao.doIns(pojo);
	}

	public boolean doUpd(GoodInfo pojo) {
		return this.goodinfoDao.doUpd(pojo);
	}

	public List<GoodInfo> findById() {
		return this.goodinfoDao.findById();
	}
	public List<GoodInfo> findByNa(){
		return this.goodinfoDao.findByNa();
	}

	public int findCountByName(String goodName) {
		return this.goodinfoDao.findCountByName(goodName);
	}

	public List<GoodInfo> findbyName(String goodName, int pagecount, int pagesize) {
		return this.goodinfoDao.findbyName(goodName, pagecount, pagesize);
	}
	public List<GoodInfo> findbygoodName(int goodId){
		return this.goodinfoDao.findbygoodName(goodId);
	}
	public List<GoodInfo> findbyType(GoodType goodType,int pagecount,int pagesize){
		return this.goodinfoDao.findbyType(goodType, pagecount, pagesize);
	}
}
