package com.cls.action;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import com.cls.pojo.His;
import com.cls.pojo.UserInfo;
import com.cls.service.HisService;
import com.cls.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class HisAction extends ActionSupport {
	private HisService hisservice;
	private Integer hisId;
	private UserInfo userInfo;
	private Double money;
	private Integer hisType;
	private Date hisDate;
	private String hisRemark;
	private UserService userservice;
	private Integer userId;
	private String resultString;

	public String getResultString() {
		return resultString;
	}

	public void setResultString(String resultString) {
		this.resultString = resultString;
	}

	public HisService getHisservice() {
		return hisservice;
	}

	public void setHisservice(HisService hisservice) {
		this.hisservice = hisservice;
	}

	public Integer getHisId() {
		return hisId;
	}

	public void setHisId(Integer hisId) {
		this.hisId = hisId;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getHisType() {
		return hisType;
	}

	public void setHisType(Integer hisType) {
		this.hisType = hisType;
	}

	public Date getHisDate() {
		return hisDate;
	}

	public void setHisDate(Date hisDate) {
		this.hisDate = hisDate;
	}

	public String getHisRemark() {
		return hisRemark;
	}

	public void setHisRemark(String hisRemark) {
		this.hisRemark = hisRemark;
	}

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

	public String findbyHis() {
		List<His> list = this.hisservice.findbyHis();
		StringBuffer sb = new StringBuffer();
		Iterator<His> it = list.iterator();
		String state = "";
		sb.append("<form name = 'f'>" + "<table>" + "<tr>" + "<th>买家</th>"
				+ "<th>金额</th>" + "<th>时间</th>" + "<th>备注</th>" + "<th>类型</th>"
				+ "<th>操作</th>");
		while (it.hasNext()) {
			His pojo = it.next();
			UserInfo pojo1 = pojo.getUserInfo();
			sb.append("<tr>" + "<td>" + pojo1.getUserName() + "</td>" + "<td>"
					+ pojo.getMoney() + "</td>" + "<td>" + pojo.getHisDate()
					+ "</td>" + "<td>" + pojo.getHisRemark()
					+ "</td>");
			if (pojo.getHisType() == 1) {
				state = "购买商品";
				sb.append("<td>"+state+"</td>");
				sb.append("<td>"+"<a href='#')'>加入钱包</a>" +"</td>");
			} else if (pojo.getHisType() == 2) {
				state = "已退货";
				sb.append("<td>"+state+"</td>");
				sb.append("<td>"+"<a href='#')'>转出金额</a>" +"</td>");
			}
			sb.append("</tr>");
		}
		sb.append("</table>" + "</form>");
		this.setResultString(sb.toString());
		return "success";
	}	
}
