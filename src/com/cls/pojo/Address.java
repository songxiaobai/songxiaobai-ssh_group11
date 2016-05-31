package com.cls.pojo;

/**
 * Address entity. @author MyEclipse Persistence Tools
 */

public class Address implements java.io.Serializable {

	// Fields

	private Integer addressId;
	private UserInfo userInfo;
	private String address;
	private String linkman;
	private Integer linktel;
	private Integer isdefault;
	private String youbian;

	// Constructors

	/** default constructor */
	public Address() {
	}

	/** full constructor */
	public Address(UserInfo userInfo, String address, String linkman,
			Integer linktel, Integer isdefault, String youbian) {
		this.userInfo = userInfo;
		this.address = address;
		this.linkman = linkman;
		this.linktel = linktel;
		this.isdefault = isdefault;
		this.youbian = youbian;
	}

	// Property accessors

	public Integer getAddressId() {
		return this.addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public Integer getLinktel() {
		return this.linktel;
	}

	public void setLinktel(Integer linktel) {
		this.linktel = linktel;
	}

	public Integer getIsdefault() {
		return this.isdefault;
	}

	public void setIsdefault(Integer isdefault) {
		this.isdefault = isdefault;
	}

	public String getYoubian() {
		return this.youbian;
	}

	public void setYoubian(String youbian) {
		this.youbian = youbian;
	}

}