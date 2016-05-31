package com.cls.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.cls.dao.CheckCheckDao;
import com.cls.pojo.CheckCheck;

public class CheckCheckDaoImpl implements CheckCheckDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean addcheckNum(int goodId, int store) {
		boolean bool = false;
		try {
			CheckCheck pojo = (CheckCheck)this.sessionFactory.getCurrentSession().get(CheckCheck.class,goodId);
			pojo.setStatNum(pojo.getStatNum()+store);
			this.sessionFactory.getCurrentSession().save(pojo);
			bool = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bool;
	}
	public boolean minuxcheckNum(int goodId,int store){
		boolean bool = false;
		try {
			CheckCheck pojo = (CheckCheck)this.sessionFactory.getCurrentSession().get(CheckCheck.class,goodId);
			pojo.setStatNum(pojo.getStatNum()-store);
			this.sessionFactory.getCurrentSession().save(pojo);
			bool = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bool;
	}

	public CheckCheck findCheckbygoodId(int goodId) {
		List<CheckCheck> list;
		CheckCheck checkCheck = null;
		try {
			String hql = "from CheckCheck a where a.goodInfo.goodId=:goodId";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			query.setInteger("goodId", goodId);
			list = query.list();
			checkCheck = list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return checkCheck;
	}
	
}
