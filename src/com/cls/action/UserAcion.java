package com.cls.action;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.cls.pojo.UserInfo;
import com.cls.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAcion extends ActionSupport{
	private UserService userservice;
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
	private String resultString;
	public UserService getUserservice() {
		return userservice;
	}
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegeisterDate() {
		return regeisterDate;
	}
	public void setRegeisterDate(Date regeisterDate) {
		this.regeisterDate = regeisterDate;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Integer getUserState() {
		return userState;
	}
	public void setUserState(Integer userState) {
		this.userState = userState;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	public String getResultString() {
		return resultString;
	}
	public void setResultString(String resultString) {
		this.resultString = resultString;
	}
	public String findbyAll(){
		List<UserInfo> list=this.userservice.findbyAll();
		StringBuffer sb=new StringBuffer();
		Iterator<UserInfo> it = list.iterator();
		String state="";
		sb.append("<form name = 'f'>" +"<table>" +
				"<tr>" +"<th>用户名</th>"+"<th>注册日期</th>"+"<th>身份证号</th>"+"<th>真实姓名</th>"+"<th>电话</th>"+"<th>性别</th>"+"<th>用户状态</th>"+"<th>角色</th>"+"<th>操作</th>");
				while(it.hasNext()){
					UserInfo pojo=it.next();
					sb.append(
							"<tr>" +"<td>"+pojo.getUserName()+"</td>" +"<td>"+pojo.getRegeisterDate()+"</td>" +
							"<td>"+pojo.getIdCard()+"</td>" +"<td>"+pojo.getRealName()+"</td>" +
							"<td>"+pojo.getTelphone()+"</td>" );
							if(pojo.getSex() == 1){
								sb.append("<td>"+"男"+"</td>" );
							}else{
								sb.append("<td>"+"女"+"</td>");
							}
							if(pojo.getUserState()==1){
								state="已拉黑人员";
								sb.append("<td>"+state+"</td>");
							}else{
								state="正常用户";
								sb.append("<td>"+state+"</td>");
							}
							if(pojo.getRole()==1){
								state="普通用户";
								sb.append("<td>"+state+"</td>");
							}else{
								state="管理员";
								sb.append("<td>"+state+"</td>");
							}
							sb.append("<td><a href='#' onclick='UpdState("+pojo.getUserId()+","+pojo.getUserState()+")'>修改</a>" +
									"</td>"+"</tr>");
				}
				sb.append("</table>" +
				"</form>");
		this.setResultString(sb.toString());
		return "success";
	}
	public String doUpdUser(){
		try {
			boolean bool=this.userservice.doUpdUser(userId, userState);
			if(bool==true){
				this.setResultString("true");
			}else{
				this.setResultString("flase");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	public String login(){
		UserInfo pojo=null;
		try {
		pojo = this.userservice.login(telphone, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
		if(null == pojo){
			this.setResultString("false");
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("pojo", pojo);
			if(pojo.getUserState()==1){
				this.setResultString("true");
			}else{
				this.setResultString("false");
				
			}
			
		}
		return "success";
		
	}
}
