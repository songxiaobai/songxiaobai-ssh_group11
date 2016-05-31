package com.cls.dao;

import java.util.Date;
import java.util.List;

import com.cls.pojo.GoodOrder;


public interface OrderDao {
	/**
	 * 查找所有信息
	 * @return
	 */
	public List<GoodOrder> findbyId();
	
	public List<GoodOrder> findbydate(Date orderDate,int pagecount,int pagesize);
	
	public boolean doUpdOrder(int orderId,int orderState);
	
	public boolean doDel(int orderId);
}
