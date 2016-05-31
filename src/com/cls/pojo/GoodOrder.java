package com.cls.pojo;

import java.util.Date;

/**
 * GoodOrder entity. @author MyEclipse Persistence Tools
 */

public class GoodOrder implements java.io.Serializable {

	// Fields

	private Integer orderId;
	private UserInfo userInfo;
	private GoodInfo goodInfo;
	private Date orderDate;
	private Integer solderCount;
	private Double orderMoney;
	private Integer orderState;

	// Constructors

	/** default constructor */
	public GoodOrder() {
	}

	/** full constructor */
	public GoodOrder(UserInfo userInfo, GoodInfo goodInfo, Date orderDate,
			Integer solderCount, Double orderMoney, Integer orderState) {
		this.userInfo = userInfo;
		this.goodInfo = goodInfo;
		this.orderDate = orderDate;
		this.solderCount = solderCount;
		this.orderMoney = orderMoney;
		this.orderState = orderState;
	}

	// Property accessors

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public GoodInfo getGoodInfo() {
		return this.goodInfo;
	}

	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Integer getSolderCount() {
		return this.solderCount;
	}

	public void setSolderCount(Integer solderCount) {
		this.solderCount = solderCount;
	}

	public Double getOrderMoney() {
		return this.orderMoney;
	}

	public void setOrderMoney(Double orderMoney) {
		this.orderMoney = orderMoney;
	}

	public Integer getOrderState() {
		return this.orderState;
	}

	public void setOrderState(Integer orderState) {
		this.orderState = orderState;
	}

}