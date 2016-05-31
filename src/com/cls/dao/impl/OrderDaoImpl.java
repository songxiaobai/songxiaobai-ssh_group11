package com.cls.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.cls.dao.OrderDao;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.GoodOrder;
import com.cls.pojo.UserInfo;

public class OrderDaoImpl implements OrderDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<GoodOrder> findbyId() {
		List<GoodOrder> list = null;
		try {
			String hql = "from GoodOrder";
			Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; 

	}
	public List<GoodOrder> findbydate(Date orderDate,int pagecount,int pagesize){
		String sql = "from GoodOrder a where a.orderDate like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(sql);
		query.setString(0, "%"+orderDate+"%");
		query.setFirstResult((pagecount-1)*pagesize);
		query.setMaxResults(pagesize);
		return query.list();
	}
	public boolean doUpdOrder(int orderId,int orderState){
		Boolean bool=null;
		try {
			if(orderState==2){
				orderState = 3;
				GoodOrder goodOrder=(GoodOrder) this.sessionFactory.getCurrentSession().get(GoodOrder.class, orderId);
				goodOrder.setOrderState(orderState);
				this.sessionFactory.getCurrentSession().save(goodOrder);
				bool=true;
			}else if(orderState==8){
				orderState=9;
				GoodOrder goodOrder=(GoodOrder) this.sessionFactory.getCurrentSession().get(GoodOrder.class, orderId);
				goodOrder.setOrderState(orderState);
				this.sessionFactory.getCurrentSession().save(goodOrder);
				bool=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool;		
	}
	public boolean doDel(int orderId){
		boolean bool = false;
		try {
			GoodOrder pojo = (GoodOrder)this.sessionFactory.getCurrentSession().get(GoodOrder.class, orderId);
			this.sessionFactory.getCurrentSession().delete(pojo);
			bool = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool; 
	}
}
