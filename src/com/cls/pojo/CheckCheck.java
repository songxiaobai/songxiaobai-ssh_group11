package com.cls.pojo;

import java.util.Date;

/**
 * CheckCheck entity. @author MyEclipse Persistence Tools
 */

public class CheckCheck implements java.io.Serializable {

	// Fields

	private Integer checkId;
	private GoodInfo goodInfo;
	private Integer statNum;
	private Integer checkNum;
	private Date checkDate;
	private String checkPrincipal;
	private Date checkTime;

	// Constructors

	/** default constructor */
	public CheckCheck() {
	}

	/** full constructor */
	public CheckCheck(GoodInfo goodInfo, Integer statNum, Integer checkNum,
			Date checkDate, String checkPrincipal, Date checkTime) {
		this.goodInfo = goodInfo;
		this.statNum = statNum;
		this.checkNum = checkNum;
		this.checkDate = checkDate;
		this.checkPrincipal = checkPrincipal;
		this.checkTime = checkTime;
	}

	// Property accessors

	public Integer getCheckId() {
		return this.checkId;
	}

	public void setCheckId(Integer checkId) {
		this.checkId = checkId;
	}

	public GoodInfo getGoodInfo() {
		return this.goodInfo;
	}

	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}

	public Integer getStatNum() {
		return this.statNum;
	}

	public void setStatNum(Integer statNum) {
		this.statNum = statNum;
	}

	public Integer getCheckNum() {
		return this.checkNum;
	}

	public void setCheckNum(Integer checkNum) {
		this.checkNum = checkNum;
	}

	public Date getCheckDate() {
		return this.checkDate;
	}

	public void setCheckDate(Date checkDate) {
		this.checkDate = checkDate;
	}

	public String getCheckPrincipal() {
		return this.checkPrincipal;
	}

	public void setCheckPrincipal(String checkPrincipal) {
		this.checkPrincipal = checkPrincipal;
	}

	public Date getCheckTime() {
		return this.checkTime;
	}

	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}

}