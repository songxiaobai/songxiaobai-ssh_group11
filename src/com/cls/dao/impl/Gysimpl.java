package com.cls.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.cls.dao.GysDao;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.Gys;

public class Gysimpl implements GysDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Gys> findByName() {
		List<Gys> list = null;
		try {
			String hql = "from Gys";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(list);
		return list; 
	}

	public int findCountByName(String gysName) {
		int count = 0;
		String sql = "select count(a.gysId) from Gys a where a.gysName like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(sql);
		query.setString(0, gysName);
		List list = query.list();
		Iterator it = list.iterator();
		while(it.hasNext()){
			String s = it.next().toString();
			count = Integer.parseInt(s);
		}
		return count;
	}

	public List<Gys> findbyName(String gysName, int pagecount, int pagesize) {
		String sql = "from Gys a where a.gysName like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(sql);
		query.setString(0, "%"+gysName+"%");
		query.setFirstResult((pagecount-1)*pagesize);
		query.setMaxResults(pagesize);
		return query.list();
	}
	

}
