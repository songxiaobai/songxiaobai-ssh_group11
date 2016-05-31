package com.cls.service.impl;

import java.util.Date;
import java.util.List;

import com.cls.dao.OrderDao;

import com.cls.pojo.GoodOrder;
import com.cls.service.OrderService;

public class OrderServiceImpl implements OrderService{
	private OrderDao orderdao;
	
	public OrderDao getOrderdao() {
		return orderdao;
	}

	public void setOrderdao(OrderDao orderdao) {
		this.orderdao = orderdao;
	}

	public List<GoodOrder> findbyId() {
		return this.orderdao.findbyId();
	}
	public List<GoodOrder> findbydate(Date orderDate,int pagecount,int pagesize){
		return this.orderdao.findbydate(orderDate, pagecount, pagesize);
	}
	public boolean doUpdOrder(int orderId,int orderState){
		return this.orderdao.doUpdOrder(orderId, orderState);
	}
	public boolean doDel(int orderId){
		return this.orderdao.doDel(orderId);
	}
}
