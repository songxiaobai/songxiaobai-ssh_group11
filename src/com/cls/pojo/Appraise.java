package com.cls.pojo;

import java.util.Date;

/**
 * Appraise entity. @author MyEclipse Persistence Tools
 */

public class Appraise implements java.io.Serializable {

	// Fields

	private Integer appraiseId;
	private UserInfo userInfo;
	private GoodInfo goodInfo;
	private String appraise;
	private Date appraiseDate;
	private Integer appraiseScore;

	// Constructors

	/** default constructor */
	public Appraise() {
	}

	/** full constructor */
	public Appraise(UserInfo userInfo, GoodInfo goodInfo, String appraise,
			Date appraiseDate, Integer appraiseScore) {
		this.userInfo = userInfo;
		this.goodInfo = goodInfo;
		this.appraise = appraise;
		this.appraiseDate = appraiseDate;
		this.appraiseScore = appraiseScore;
	}

	// Property accessors

	public Integer getAppraiseId() {
		return this.appraiseId;
	}

	public void setAppraiseId(Integer appraiseId) {
		this.appraiseId = appraiseId;
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

	public String getAppraise() {
		return this.appraise;
	}

	public void setAppraise(String appraise) {
		this.appraise = appraise;
	}

	public Date getAppraiseDate() {
		return this.appraiseDate;
	}

	public void setAppraiseDate(Date appraiseDate) {
		this.appraiseDate = appraiseDate;
	}

	public Integer getAppraiseScore() {
		return this.appraiseScore;
	}

	public void setAppraiseScore(Integer appraiseScore) {
		this.appraiseScore = appraiseScore;
	}

}