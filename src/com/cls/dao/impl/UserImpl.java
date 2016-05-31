package com.cls.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.cls.dao.UserDao;
import com.cls.pojo.UserInfo;

public class UserImpl implements UserDao{
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<UserInfo> findbyAll() {
		List<UserInfo> list = null;
		try {
			String hql = "from UserInfo";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<UserInfo> findbyuserName(int userId) {
		List<UserInfo> list=null;
		try {
			String hql = "from GoodOrder a where a.userInfo.userId=:userId";
			Query query=this.sessionFactory.getCurrentSession().createQuery(hql);
			query.setInteger("userId", userId);
			list=query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean doUpdUser(int userId,int userState){
		Boolean bool=null;
		try {
			if(userState==1){
				userState = 0;
				UserInfo userInfo=(UserInfo) this.sessionFactory.getCurrentSession().get(UserInfo.class, userId);
				userInfo.setUserState(userState);
				this.sessionFactory.getCurrentSession().save(userInfo);
				bool=true;
			}else if(userState==0){
				userState = 1;
				UserInfo userInfo=(UserInfo) this.sessionFactory.getCurrentSession().get(UserInfo.class, userId);
				userInfo.setUserState(userState);
				this.sessionFactory.getCurrentSession().save(userInfo);
				bool=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool;
	}
	public UserInfo login(String telphone,String password){
		UserInfo pojo=null;
		try {
			String hql = "from UserInfo where telphone = ? and password = ?";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			query.setString(0, telphone);
			query.setString(1, password);
			List<UserInfo> list = query.list();
			if(!list.isEmpty()){
				pojo = list.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pojo;
		
	}

}
