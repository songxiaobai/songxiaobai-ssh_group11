package com.cls.action;

import java.util.Date;

import com.cls.pojo.GoodInfo;
import com.cls.pojo.Gys;
import com.cls.service.StockService;
import com.opensymphony.xwork2.ActionSupport;



public class StockAction extends ActionSupport{
	private StockService stockservice;
	private Integer stockId;
	private GoodInfo goodInfo;
	private Gys gys;
	private Integer stockNum;
	private Double stockUnitPrice;
	private Double stockPrice;
	private Date stockDate;
	private String stockPrincipal;
	
	public StockService getStockservice() {
		return stockservice;
	}
	public void setStockservice(StockService stockservice) {
		this.stockservice = stockservice;
	}
	public Integer getStockId() {
		return stockId;
	}
	public void setStockId(Integer stockId) {
		this.stockId = stockId;
	}
	public GoodInfo getGoodInfo() {
		return goodInfo;
	}
	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}
	public Gys getGys() {
		return gys;
	}
	public void setGys(Gys gys) {
		this.gys = gys;
	}
	public Integer getStockNum() {
		return stockNum;
	}
	public void setStockNum(Integer stockNum) {
		this.stockNum = stockNum;
	}
	public Double getStockUnitPrice() {
		return stockUnitPrice;
	}
	public void setStockUnitPrice(Double stockUnitPrice) {
		this.stockUnitPrice = stockUnitPrice;
	}
	public Double getStockPrice() {
		return stockPrice;
	}
	public void setStockPrice(Double stockPrice) {
		this.stockPrice = stockPrice;
	}
	public Date getStockDate() {
		return stockDate;
	}
	public void setStockDate(Date stockDate) {
		this.stockDate = stockDate;
	}
	public String getStockPrincipal() {
		return stockPrincipal;
	}
	public void setStockPrincipal(String stockPrincipal) {
		this.stockPrincipal = stockPrincipal;
	}
	
}
