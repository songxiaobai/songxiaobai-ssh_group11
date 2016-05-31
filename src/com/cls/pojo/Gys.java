package com.cls.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Gys entity. @author MyEclipse Persistence Tools
 */

public class Gys implements java.io.Serializable {

	// Fields

	private Integer gysId;
	private String gysName;
	private String gysRemark;
	private Long gysTel;
	private String gysAddress;
	private String gysLinkman;
	private Set stocks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Gys() {
	}

	/** full constructor */
	public Gys(String gysName, String gysRemark, Long gysTel,
			String gysAddress, String gysLinkman, Set stocks) {
		this.gysName = gysName;
		this.gysRemark = gysRemark;
		this.gysTel = gysTel;
		this.gysAddress = gysAddress;
		this.gysLinkman = gysLinkman;
		this.stocks = stocks;
	}

	// Property accessors

	
	public Integer getGysId() {
		return this.gysId;
	}

	public void setGysId(Integer gysId) {
		this.gysId = gysId;
	}

	public String getGysName() {
		return this.gysName;
	}

	public void setGysName(String gysName) {
		this.gysName = gysName;
	}

	public String getGysRemark() {
		return this.gysRemark;
	}

	public void setGysRemark(String gysRemark) {
		this.gysRemark = gysRemark;
	}

	public Long getGysTel() {
		return this.gysTel;
	}

	public void setGysTel(Long gysTel) {
		this.gysTel = gysTel;
	}

	public String getGysAddress() {
		return this.gysAddress;
	}

	public void setGysAddress(String gysAddress) {
		this.gysAddress = gysAddress;
	}

	public String getGysLinkman() {
		return this.gysLinkman;
	}

	public void setGysLinkman(String gysLinkman) {
		this.gysLinkman = gysLinkman;
	}

	public Set getStocks() {
		return this.stocks;
	}

	public void setStocks(Set stocks) {
		this.stocks = stocks;
	}

}