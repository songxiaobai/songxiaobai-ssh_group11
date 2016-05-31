package com.cls.dao.impl;

import org.hibernate.SessionFactory;

import com.cls.dao.StockDao;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.Gys;

public class StockImpl implements StockDao{
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean doIns(GoodInfo pojo) {
		boolean bool = false;
		try {
			this.sessionFactory.getCurrentSession().save(pojo);
			bool = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool; 
	}

	public GoodInfo findById(int goodId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Gys findbyId(int gysId) {
		// TODO Auto-generated method stub
		return null;
	}

}
