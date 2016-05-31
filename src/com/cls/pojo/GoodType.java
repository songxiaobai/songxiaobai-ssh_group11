package com.cls.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * GoodType entity. @author MyEclipse Persistence Tools
 */

public class GoodType implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private String typeRemark;
	private Set goodInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public GoodType() {
	}

	/** full constructor */
	public GoodType(String typeName, String typeRemark, Set goodInfos) {
		this.typeName = typeName;
		this.typeRemark = typeRemark;
		this.goodInfos = goodInfos;
	}

	// Property accessors

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeRemark() {
		return this.typeRemark;
	}

	public void setTypeRemark(String typeRemark) {
		this.typeRemark = typeRemark;
	}

	public Set getGoodInfos() {
		return this.goodInfos;
	}

	public void setGoodInfos(Set goodInfos) {
		this.goodInfos = goodInfos;
	}

}