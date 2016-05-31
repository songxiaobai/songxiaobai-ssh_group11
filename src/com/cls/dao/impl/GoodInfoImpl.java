package com.cls.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.cls.dao.GoodInfoDao;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.GoodType;


public class GoodInfoImpl implements GoodInfoDao{
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean doDel(int goodId) {//删除操作
		boolean bool = false;
		try {
			GoodInfo pojo = (GoodInfo)this.sessionFactory.getCurrentSession().get(GoodInfo.class, goodId);
			this.sessionFactory.getCurrentSession().delete(pojo);
			bool = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool; 
	}

	public boolean doIns(GoodInfo pojo) {//新增操作
		boolean bool = false;
		try {
			this.sessionFactory.getCurrentSession().save(pojo);
			bool = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool; 
	}

	public boolean doUpd(GoodInfo pojo) {//修改操作
		boolean bool = false;
		try {
			this.sessionFactory.getCurrentSession().update(pojo);
			bool = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool; 
	}

	public List<GoodInfo> findById() {//查找操作
		List<GoodInfo> list = null;
		try {
			String hql = "from GoodInfo";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 
	}
	public List<GoodInfo> findByNa(){
		List<GoodInfo> list = null;
		try {
			String hql = "from GoodInfo";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 
	}
	public int findCountByName(String goodName) {
		int count = 0;
		String sql = "select count(a.goodId) from GoodInfo a where a.goodName like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(sql);
		query.setString(0, goodName);
		List list = query.list();
		Iterator it = list.iterator();
		while(it.hasNext()){
			String s = it.next().toString();
			count = Integer.parseInt(s);
		}
		return count;
	
	}

	public List<GoodInfo> findbyName(String goodName, int pagecount, int pagesize) {
		String sql = "from GoodInfo a where a.goodName like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(sql);
		query.setString(0, "%"+goodName+"%");
		query.setFirstResult((pagecount-1)*pagesize);
		query.setMaxResults(pagesize);
		return query.list();
	}
	public List<GoodInfo> findbygoodName(int goodId){
		List<GoodInfo> list=null;
		try {
			String hql="from GoodOrder a where a.goodInfo.goodId=:goodId";
			Query query=this.sessionFactory.getCurrentSession().createQuery(hql);
			System.out.println(hql);
			query.setInteger("goodId", goodId);
			list=query.list();
			System.out.println(list);
			System.out.println(555);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<GoodInfo> findbyType(GoodType goodType,int pagecount,int pagesize){
		String sql = "from GoodInfo a where a.goodType like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(sql);
		query.setString(0, "%"+goodType+"%");
		query.setFirstResult((pagecount-1)*pagesize);
		query.setMaxResults(pagesize);
		return query.list();
	}
}
