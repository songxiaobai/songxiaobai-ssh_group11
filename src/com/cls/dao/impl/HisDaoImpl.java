package com.cls.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import com.cls.dao.HisDao;
import com.cls.pojo.His;

public class HisDaoImpl implements HisDao{
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<His> findbyHis() {
		List<His> list = null;
		try {
			String hql = "from His";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 
	}
	
}
