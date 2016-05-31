package com.cls.pojo;

/**
 * ShopCar entity. @author MyEclipse Persistence Tools
 */

public class ShopCar implements java.io.Serializable {

	// Fields

	private Integer shopCarId;
	private UserInfo userInfo;
	private GoodInfo goodInfo;
	private Integer shopNum;
	private Double allPrice;

	// Constructors

	/** default constructor */
	public ShopCar() {
	}

	/** full constructor */
	public ShopCar(UserInfo userInfo, GoodInfo goodInfo, Integer shopNum,
			Double allPrice) {
		this.userInfo = userInfo;
		this.goodInfo = goodInfo;
		this.shopNum = shopNum;
		this.allPrice = allPrice;
	}

	// Property accessors

	public Integer getShopCarId() {
		return this.shopCarId;
	}

	public void setShopCarId(Integer shopCarId) {
		this.shopCarId = shopCarId;
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

}