
package com.cls.pojo;

import java.util.Date;

/**
 * His entity. @author MyEclipse Persistence Tools
 */

public class His implements java.io.Serializable {

	// Fields

	private Integer hisId;
	private UserInfo userInfo;
	private Double money;
	private Integer hisType;
	private Date hisDate;
	private String hisRemark;

	// Constructors

	/** default constructor */
	public His() {
	}

	/** full constructor */
	public His(UserInfo userInfo, Double money, Integer hisType, Date hisDate,
			String hisRemark) {
		this.userInfo = userInfo;
		this.money = money;
		this.hisType = hisType;
		this.hisDate = hisDate;
		this.hisRemark = hisRemark;
	}

	// Property accessors

	public Integer getHisId() {
		return this.hisId;
	}

	public void setHisId(Integer hisId) {
		this.hisId = hisId;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getHisType() {
		return this.hisType;
	}

	public void setHisType(Integer hisType) {
		this.hisType = hisType;
	}

	public Date getHisDate() {
		return this.hisDate;
	}

	public void setHisDate(Date hisDate) {
		this.hisDate = hisDate;
	}

	public String getHisRemark() {
		return this.hisRemark;
	}

	public void setHisRemark(String hisRemark) {
		this.hisRemark = hisRemark;
	}

}