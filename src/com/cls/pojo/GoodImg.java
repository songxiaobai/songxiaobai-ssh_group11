package com.cls.pojo;

/**
 * GoodImg entity. @author MyEclipse Persistence Tools
 */

public class GoodImg implements java.io.Serializable {

	// Fields

	private Integer goodImgId;
	private GoodInfo goodInfo;
	private String goodImg;

	// Constructors

	/** default constructor */
	public GoodImg() {
	}

	/** full constructor */
	public GoodImg(GoodInfo goodInfo, String goodImg) {
		this.goodInfo = goodInfo;
		this.goodImg = goodImg;
	}

	// Property accessors

	public Integer getGoodImgId() {
		return this.goodImgId;
	}

	public void setGoodImgId(Integer goodImgId) {
		this.goodImgId = goodImgId;
	}

	public GoodInfo getGoodInfo() {
		return this.goodInfo;
	}

	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}

	public String getGoodImg() {
		return this.goodImg;
	}

	public void setGoodImg(String goodImg) {
		this.goodImg = goodImg;
	}

}