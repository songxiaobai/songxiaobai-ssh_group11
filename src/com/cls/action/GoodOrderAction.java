package com.cls.action;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.cls.pojo.GoodInfo;
import com.cls.pojo.GoodOrder;
import com.cls.pojo.GoodType;
import com.cls.pojo.UserInfo;
import com.cls.service.GoodInfoService;
import com.cls.service.OrderService;
import com.cls.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class GoodOrderAction extends ActionSupport{
	/**
	 * 订单表
	 */
	private OrderService orderservice;
	private Integer orderId;
	private UserInfo userInfo;
	private GoodInfo goodInfo;
	private Date orderDate;
	private Integer solderCount;
	private Double orderMoney;
	private Integer orderState;
	private UserService userservice;
	private Integer userId;
	private GoodInfoService goodservice;
	private Integer goodId;
	private int pagecount;
	private int pageSize;
	private int pageCurrent;
	private String resultString;
	
	
	
	public int getPagecount() {
		return pagecount;
	}

	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCurrent() {
		return pageCurrent;
	}

	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}

	public String getResultString() {
		return resultString;
	}

	public void setResultString(String resultString) {
		this.resultString = resultString;
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

	public GoodInfoService getGoodservice() {
		return goodservice;
	}

	public void setGoodservice(GoodInfoService goodservice) {
		this.goodservice = goodservice;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public OrderService getOrderservice() {
		return orderservice;
	}

	public void setOrderservice(OrderService orderservice) {
		this.orderservice = orderservice;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public GoodInfo getGoodInfo() {
		return goodInfo;
	}

	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Integer getSolderCount() {
		return solderCount;
	}

	public void setSolderCount(Integer solderCount) {
		this.solderCount = solderCount;
	}

	public Double getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(Double orderMoney) {
		this.orderMoney = orderMoney;
	}

	public Integer getOrderState() {
		return orderState;
	}

	public void setOrderState(Integer orderState) {
		this.orderState = orderState;
	}

	public String findbyId(){
		List<GoodOrder> list = this.orderservice.findbyId();
		StringBuffer sb = new StringBuffer();
		Iterator<GoodOrder> it = list.iterator();
		String state="";
		sb.append("<form name = 'f'>" +"<table>" +
				"<tr>" +"<th>买家</th>"+"<th>商品名称</th>"+"<th>下单时间</th>"+"<th>购买数量</th>"+"<th>订单金额</th>"+"<th>状态</th>"+"<th>操作</th>");
				while(it.hasNext()){
					GoodOrder pojo = it.next();
						UserInfo pojo1 = pojo.getUserInfo();
							GoodInfo pojo2 = pojo.getGoodInfo();
							sb.append("<tr>" +"<td>"+pojo1.getUserName()+"</td>" +"<td>"+pojo2.getGoodName()+"</td>" +
									"<td>"+pojo.getOrderDate()+"</td>" +"<td>"+pojo.getSolderCount()+"</td>" +
									"<td>"+pojo.getOrderMoney()+"</td>" );
							if(pojo.getOrderState()==2){
								state="待发货";
								sb.append("<td>"+state+"</td>");
								sb.append("<td>"+"<a href='#' onClick='doUpdOrder("+pojo.getOrderId()+","+pojo.getOrderState()+")'>发货</a>" +
										"</td>");
							}
							else if(pojo.getOrderState()==3){
								state="已发货";
								sb.append("<td>"+state+"</td>");
								sb.append("<td>"+"<a href='#')'>查看商品详情</a>" +
										"</td>");
							}
							else if(pojo.getOrderState()==4){
								state="待收货";
								sb.append("<td>"+state+"</td>");
								sb.append("<td>"+"<a href='#' onClick='doUpdOrder("+pojo.getOrderId()+","+pojo.getOrderState()+")'>修改</a>" +
								"</td>");
							}
							else if(pojo.getOrderState()==5){
								state="已收货";
								sb.append("<td>"+state+"</td>");
								sb.append("<td>已收货</td>");
							}
							else if(pojo.getOrderState()==8){
								state="待退款";
								sb.append("<td>"+state+"</td>");
								sb.append("<td>"+"<a href='#' onClick='doUpdOrder("+pojo.getOrderId()+","+pojo.getOrderState()+")'>退款</a>" +
										"</td>");
							}
							else if(pojo.getOrderState()==9){
								state="已退款";
								sb.append("<td>"+state+"</td>");
								sb.append("<td>"+"<a href='#'onClick='goDel("+pojo.getOrderId()+")'>删除</a>" +
										"</td>");
							}
							sb.append("</tr>");
				}
				sb.append(
						"</table>" +
						"</form>");
				this.setResultString(sb.toString());
				return "success";
	}
	public String findbydate(){
		
		List<GoodOrder> list = this.orderservice.findbydate(orderDate, this.pageCurrent, pageSize);
		StringBuffer sb = new StringBuffer();
		String state="";
		sb.append(" <table>");
		sb.append("<tr><td>买家</td><td>商品名称</td><td>下单时间</td><td>购买数量</td><td>订单金额</td><td>状态</td><td>操作</td></tr>");
		Iterator<GoodOrder> it = list.iterator();
		while(it.hasNext()){
			GoodOrder pojo = it.next();
			UserInfo pojo1 = pojo.getUserInfo();
			GoodInfo pojo2 = pojo.getGoodInfo();
			sb.append("<tr><td>"+pojo1.getUserName()+"</td><td>"+pojo2.getGoodName()+"</td><td>"+pojo.getOrderDate()+"</td><td>"+pojo.getSolderCount()+"</td><td>"+pojo.getOrderMoney()+"</td>" );
					if(pojo.getOrderState()==2){
						state="待发货";
						sb.append("<td>"+state+"</td>");
						sb.append("<td>"+"<a href='#' onClick='doUpdOrder("+pojo.getOrderId()+","+pojo.getOrderState()+")'>发货</a>" +
						"</td>");
					}
					else if(pojo.getOrderState()==3){
						state="已发货";
						sb.append("<td>"+"<a href='#')'>查看商品详情</a>" +
						"</td>");
					}
					else if(pojo.getOrderState()==4){
						state="待收货";
						sb.append("<td>"+state+"</td>");
						sb.append("<td>"+"<a href='#' onClick='doUpdOrder("+pojo.getOrderId()+","+pojo.getOrderState()+")'>修改</a>" +
						"</td>");
					}
					else if(pojo.getOrderState()==5){
						state="已收货";
						sb.append("<td>"+state+"</td>");
						sb.append("<td>已收货</td>");
					}
					else if(pojo.getOrderState()==8){
						state="待退款";
						sb.append("<td>"+state+"</td>");
						sb.append("<td>"+"<a href='#' onClick='doUpdOrder("+pojo.getOrderId()+","+pojo.getOrderState()+")'>退款</a>" +
						"</td>");
					}
					else if(pojo.getOrderState()==9){
						state="已退款";
						sb.append("<td>"+state+"</td>");
						sb.append("<td>"+"<a href='#'onClick='goDel("+pojo.getOrderId()+")'>删除</a>" +
						"</td>");
					}
					sb.append("</tr>");
			if(list.size()<pageSize){
				for(int i=0;i<pageSize-list.size();i++){
				sb.append("<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
				}
				}
			}
		sb.append("</table>");
		this.setResultString(sb.toString());
		return "success";
	}
	public String doUpdOrder(){
		try {
			boolean bool=this.orderservice.doUpdOrder(orderId, orderState);
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
	public String doDel(){
		boolean bool = this.orderservice.doDel(this.orderId);
		this.setResultString(String.valueOf(bool));
		return "success";
	}
}
