package com.cls.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * UserInfo entity. @author MyEclipse Persistence Tools
 */

public class UserInfo implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userName;
	private String password;
	private Date regeisterDate;
	private String idCard;
	private String realName;
	private String telphone;
	private Integer sex;
	private Integer userState;
	private Integer role;
	private String userPhoto;
	private Double balance;
	private Set hises = new HashSet(0);
	private Set addresses = new HashSet(0);
	private Set shopCars = new HashSet(0);
	private Set appraises = new HashSet(0);
	private Set goodOrders = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserInfo() {
	}

	/** minimal constructor */
	public UserInfo(String password, Date regeisterDate, String telphone,
			Integer userState) {
		this.password = password;
		this.regeisterDate = regeisterDate;
		this.telphone = telphone;
		this.userState = userState;
	}

	/** full constructor */
	public UserInfo(String userName, String password, Date regeisterDate,
			String idCard, String realName, String telphone, Integer sex,
			Integer userState, Integer role, String userPhoto, Double balance,
			Set hises, Set addresses, Set shopCars, Set appraises,
			Set goodOrders) {
		this.userName = userName;
		this.password = password;
		this.regeisterDate = regeisterDate;
		this.idCard = idCard;
		this.realName = realName;
		this.telphone = telphone;
		this.sex = sex;
		this.userState = userState;
		this.role = role;
		this.userPhoto = userPhoto;
		this.balance = balance;
		this.hises = hises;
		this.addresses = addresses;
		this.shopCars = shopCars;
		this.appraises = appraises;
		this.goodOrders = goodOrders;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegeisterDate() {
		return this.regeisterDate;
	}

	public void setRegeisterDate(Date regeisterDate) {
		this.regeisterDate = regeisterDate;
	}

	public String getIdCard() {
		return this.idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getTelphone() {
		return this.telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getUserState() {
		return this.userState;
	}

	public void setUserState(Integer userState) {
		this.userState = userState;
	}

	public Integer getRole() {
		return this.role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getUserPhoto() {
		return this.userPhoto;
	}

	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}

	public Double getBalance() {
		return this.balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public Set getHises() {
		return this.hises;
	}

	public void setHises(Set hises) {
		this.hises = hises;
	}

	public Set getAddresses() {
		return this.addresses;
	}

	public void setAddresses(Set addresses) {
		this.addresses = addresses;
	}

	public Set getShopCars() {
		return this.shopCars;
	}

	public void setShopCars(Set shopCars) {
		this.shopCars = shopCars;
	}

	public Set getAppraises() {
		return this.appraises;
	}

	public void setAppraises(Set appraises) {
		this.appraises = appraises;
	}

	public Set getGoodOrders() {
		return this.goodOrders;
	}

	public void setGoodOrders(Set goodOrders) {
		this.goodOrders = goodOrders;
	}

}