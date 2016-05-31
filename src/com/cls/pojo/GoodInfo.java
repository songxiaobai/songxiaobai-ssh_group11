package com.cls.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * GoodInfo entity. @author MyEclipse Persistence Tools
 */

public class GoodInfo implements java.io.Serializable {

	// Fields

	private Integer goodId;
	private GoodType goodType;
	private String goodName;
	private Double goodPrice;
	private String goodImg;
	private String goodRemark;
	private Date goodAdddate;
	private Double abatePrice;
	private Integer goodStat;
	private Set shopBacks = new HashSet(0);
	private Set checkChecks = new HashSet(0);
	private Set goodOrders = new HashSet(0);
	private Set appraises = new HashSet(0);
	private Set shopCars = new HashSet(0);
	private Set goodImgs = new HashSet(0);
	private Set stocks = new HashSet(0);

	// Constructors

	/** default constructor */
	public GoodInfo() {
	}

	/** full constructor */
	public GoodInfo(GoodType goodType, String goodName, Double goodPrice,
			String goodImg, String goodRemark, Date goodAdddate,
			Double abatePrice,Integer goodStat, Set shopBacks, Set checkChecks, Set goodOrders,
			Set appraises, Set shopCars, Set goodImgs, Set stocks) {
		this.goodType = goodType;
		this.goodName = goodName;
		this.goodPrice = goodPrice;
		this.goodImg = goodImg;
		this.goodRemark = goodRemark;
		this.goodAdddate = goodAdddate;
		this.abatePrice = abatePrice;
		this.goodStat=goodStat;
		this.shopBacks = shopBacks;
		this.checkChecks = checkChecks;
		this.goodOrders = goodOrders;
		this.appraises = appraises;
		this.shopCars = shopCars;
		this.goodImgs = goodImgs;
		this.stocks = stocks;
	}

	
	public Integer getGoodStat(){
		return this.goodStat;
	}
	public void setGoodStat(Integer goodStat){
		this.goodStat=goodStat;
	}
	public Integer getGoodId() {
		return this.goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public GoodType getGoodType() {
		return this.goodType;
	}

	public void setGoodType(GoodType goodType) {
		this.goodType = goodType;
	}

	public String getGoodName() {
		return this.goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public Double getGoodPrice() {
		return this.goodPrice;
	}

	public void setGoodPrice(Double goodPrice) {
		this.goodPrice = goodPrice;
	}

	public String getGoodImg() {
		return this.goodImg;
	}

	public void setGoodImg(String goodImg) {
		this.goodImg = goodImg;
	}

	public String getGoodRemark() {
		return this.goodRemark;
	}

	public void setGoodRemark(String goodRemark) {
		this.goodRemark = goodRemark;
	}

	public Date getGoodAdddate() {
		return this.goodAdddate;
	}

	public void setGoodAdddate(Date goodAdddate) {
		this.goodAdddate = goodAdddate;
	}

	public Double getAbatePrice() {
		return this.abatePrice;
	}

	public void setAbatePrice(Double abatePrice) {
		this.abatePrice = abatePrice;
	}

	public Set getShopBacks() {
		return this.shopBacks;
	}

	public void setShopBacks(Set shopBacks) {
		this.shopBacks = shopBacks;
	}

	public Set getCheckChecks() {
		return this.checkChecks;
	}

	public void setCheckChecks(Set checkChecks) {
		this.checkChecks = checkChecks;
	}

	public Set getGoodOrders() {
		return this.goodOrders;
	}

	public void setGoodOrders(Set goodOrders) {
		this.goodOrders = goodOrders;
	}

	public Set getAppraises() {
		return this.appraises;
	}

	public void setAppraises(Set appraises) {
		this.appraises = appraises;
	}

	public Set getShopCars() {
		return this.shopCars;
	}

	public void setShopCars(Set shopCars) {
		this.shopCars = shopCars;
	}

	public Set getGoodImgs() {
		return this.goodImgs;
	}

	public void setGoodImgs(Set goodImgs) {
		this.goodImgs = goodImgs;
	}

	public Set getStocks() {
		return this.stocks;
	}

	public void setStocks(Set stocks) {
		this.stocks = stocks;
	}

}