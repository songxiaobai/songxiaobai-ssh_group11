package com.cls.pojo;

import java.util.Date;

/**
 * ShopBack entity. @author MyEclipse Persistence Tools
 */

public class ShopBack implements java.io.Serializable {

	// Fields

	private Integer shopBackId;
	private GoodInfo goodInfo;
	private Double goodPrice;
	private Integer shopNum;
	private Double allPrice;
	private Date backDate;

	// Constructors

	/** default constructor */
	public ShopBack() {
	}

	/** full constructor */
	public ShopBack(GoodInfo goodInfo, Double goodPrice, Integer shopNum,
			Double allPrice, Date backDate) {
		this.goodInfo = goodInfo;
		this.goodPrice = goodPrice;
		this.shopNum = shopNum;
		this.allPrice = allPrice;
		this.backDate = backDate;
	}

	// Property accessors

	public Integer getShopBackId() {
		return this.shopBackId;
	}

	public void setShopBackId(Integer shopBackId) {
		this.shopBackId = shopBackId;
	}

	public GoodInfo getGoodInfo() {
		return this.goodInfo;
	}

	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}

	public Double getGoodPrice() {
		return this.goodPrice;
	}

	public void setGoodPrice(Double goodPrice) {
		this.goodPrice = goodPrice;
	}

	public Integer getShopNum() {
		return this.shopNum;
	}

	public void setShopNum(Integer shopNum) {
		this.shopNum = shopNum;
	}

	public Double getAllPrice() {
		return this.allPrice;
	}

	public void setAllPrice(Double allPrice) {
		this.allPrice = allPrice;
	}

	public Date getBackDate() {
		return this.backDate;
	}

	public void setBackDate(Date backDate) {
		this.backDate = backDate;
	}

}