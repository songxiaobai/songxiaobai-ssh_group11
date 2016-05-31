
package com.cls.pojo;

import java.util.Date;

/**
 * StockBack entity. @author MyEclipse Persistence Tools
 */

public class StockBack implements java.io.Serializable {

	// Fields

	private Integer stockBackId;
	private Stock stock;
	private String backRemark;
	private Integer backNum;
	private Double backUnitPrice;
	private Double backPrice;
	private Date backDate;
	private String backPrincipal;

	// Constructors

	/** default constructor */
	public StockBack() {
	}

	/** full constructor */
	public StockBack(Stock stock, String backRemark, Integer backNum,
			Double backUnitPrice, Double backPrice, Date backDate,
			String backPrincipal) {
		this.stock = stock;
		this.backRemark = backRemark;
		this.backNum = backNum;
		this.backUnitPrice = backUnitPrice;
		this.backPrice = backPrice;
		this.backDate = backDate;
		this.backPrincipal = backPrincipal;
	}

	// Property accessors

	public Integer getStockBackId() {
		return this.stockBackId;
	}

	public void setStockBackId(Integer stockBackId) {
		this.stockBackId = stockBackId;
	}

	public Stock getStock() {
		return this.stock;
	}

	public void setStock(Stock stock) {
		this.stock = stock;
	}

	public String getBackRemark() {
		return this.backRemark;
	}

	public void setBackRemark(String backRemark) {
		this.backRemark = backRemark;
	}

	public Integer getBackNum() {
		return this.backNum;
	}

	public void setBackNum(Integer backNum) {
		this.backNum = backNum;
	}

	public Double getBackUnitPrice() {
		return this.backUnitPrice;
	}

	public void setBackUnitPrice(Double backUnitPrice) {
		this.backUnitPrice = backUnitPrice;
	}

	public Double getBackPrice() {
		return this.backPrice;
	}

	public void setBackPrice(Double backPrice) {
		this.backPrice = backPrice;
	}

	public Date getBackDate() {
		return this.backDate;
	}

	public void setBackDate(Date backDate) {
		this.backDate = backDate;
	}

	public String getBackPrincipal() {
		return this.backPrincipal;
	}

	public void setBackPrincipal(String backPrincipal) {
		this.backPrincipal = backPrincipal;
	}

}