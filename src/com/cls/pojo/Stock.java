

package com.cls.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Stock entity. @author MyEclipse Persistence Tools
 */

public class Stock implements java.io.Serializable {

	// Fields

	private Integer stockId;
	private GoodInfo goodInfo;
	private Gys gys;
	private Integer stockNum;
	private Double stockUnitPrice;
	private Double stockPrice;
	private Date stockDate;
	private String stockPrincipal;
	private Set stockBacks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Stock() {
	}

	/** full constructor */
	public Stock(GoodInfo goodInfo, Gys gys, Integer stockNum,
			Double stockUnitPrice, Double stockPrice, Date stockDate,
			String stockPrincipal, Set stockBacks) {
		this.goodInfo = goodInfo;
		this.gys = gys;
		this.stockNum = stockNum;
		this.stockUnitPrice = stockUnitPrice;
		this.stockPrice = stockPrice;
		this.stockDate = stockDate;
		this.stockPrincipal = stockPrincipal;
		this.stockBacks = stockBacks;
	}

	// Property accessors

	public Integer getStockId() {
		return this.stockId;
	}

	public void setStockId(Integer stockId) {
		this.stockId = stockId;
	}

	public GoodInfo getGoodInfo() {
		return this.goodInfo;
	}

	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}

	public Gys getGys() {
		return this.gys;
	}

	public void setGys(Gys gys) {
		this.gys = gys;
	}

	public Integer getStockNum() {
		return this.stockNum;
	}

	public void setStockNum(Integer stockNum) {
		this.stockNum = stockNum;
	}

	public Double getStockUnitPrice() {
		return this.stockUnitPrice;
	}

	public void setStockUnitPrice(Double stockUnitPrice) {
		this.stockUnitPrice = stockUnitPrice;
	}

	public Double getStockPrice() {
		return this.stockPrice;
	}

	public void setStockPrice(Double stockPrice) {
		this.stockPrice = stockPrice;
	}

	public Date getStockDate() {
		return this.stockDate;
	}

	public void setStockDate(Date stockDate) {
		this.stockDate = stockDate;
	}

	public String getStockPrincipal() {
		return this.stockPrincipal;
	}

	public void setStockPrincipal(String stockPrincipal) {
		this.stockPrincipal = stockPrincipal;
	}

	public Set getStockBacks() {
		return this.stockBacks;
	}

	public void setStockBacks(Set stockBacks) {
		this.stockBacks = stockBacks;
	}

}