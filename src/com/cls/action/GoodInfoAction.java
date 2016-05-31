package com.cls.action;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.cls.pojo.CheckCheck;
import com.cls.pojo.GoodInfo;
import com.cls.pojo.GoodType;
import com.cls.service.CheckCheckService;
import com.cls.service.GoodInfoService;
import com.opensymphony.xwork2.ActionSupport;


public class GoodInfoAction extends ActionSupport{
	/**
	 * 商品表
	 */
	private GoodInfoService goodservice;
	private int goodId;
	private GoodType goodType;
	private String goodName;
	private Double goodPrice;
	private String goodImg;
	private String goodRemark;
	private Date goodAdddate;
	private Double abatePrice;
	private int goodStat;
	private int pagecount;
	private int pageSize;
	private int pageCurrent;
	private String resultString;
	/**
	 * 库存表
	 *
	 */
	private CheckCheckService checkservice;
	private Integer checkId;
	private GoodInfo goodInfo;
	private Integer statNum;
	private Integer checkNum;
	private Date checkDate;
	private String checkPrincipal;
	private Date checkTime;
	/**
	 * 商品表
	 */
	public int getPageCurrent() {
		return pageCurrent;
	}
	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}
	public GoodInfoService getGoodservice() {
		return goodservice;
	}
	public void setGoodservice(GoodInfoService goodservice) {
		this.goodservice = goodservice;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public GoodType getGoodType() {
		return goodType;
	}
	public void setGoodType(GoodType goodType) {
		this.goodType = goodType;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public Double getGoodPrice() {
		return goodPrice;
	}
	public void setGoodPrice(Double goodPrice) {
		this.goodPrice = goodPrice;
	}
	public String getGoodImg() {
		return goodImg;
	}
	public void setGoodImg(String goodImg) {
		this.goodImg = goodImg;
	}
	public String getGoodRemark() {
		return goodRemark;
	}
	public void setGoodRemark(String goodRemark) {
		this.goodRemark = goodRemark;
	}
	public Date getGoodAdddate() {
		return goodAdddate;
	}
	public void setGoodAdddate(Date goodAdddate) {
		this.goodAdddate = goodAdddate;
	}
	public Double getAbatePrice() {
		return abatePrice;
	}
	public void setAbatePrice(Double abatePrice) {
		this.abatePrice = abatePrice;
	}
	public int getGoodStat() {
		return goodStat;
	}
	public void setGoodStat(int goodStat) {
		this.goodStat = goodStat;
	}
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
	public String getResultString() {
		return resultString;
	}
	public void setResultString(String resultString) {
		this.resultString = resultString;
	}
	/**
	 * 库存表
	 *
	 */
	
	public CheckCheckService getCheckservice() {
		return checkservice;
	}
	public void setCheckservice(CheckCheckService checkservice) {
		this.checkservice = checkservice;
	}
	public Integer getCheckId() {
		return checkId;
	}
	public void setCheckId(Integer checkId) {
		this.checkId = checkId;
	}
	public GoodInfo getGoodInfo() {
		return goodInfo;
	}
	public void setGoodInfo(GoodInfo goodInfo) {
		this.goodInfo = goodInfo;
	}
	public Integer getStatNum() {
		return statNum;
	}
	public void setStatNum(Integer statNum) {
		this.statNum = statNum;
	}
	public Integer getCheckNum() {
		return checkNum;
	}
	public void setCheckNum(Integer checkNum) {
		this.checkNum = checkNum;
	}
	public Date getCheckDate() {
		return checkDate;
	}
	public void setCheckDate(Date checkDate) {
		this.checkDate = checkDate;
	}
	public String getCheckPrincipal() {
		return checkPrincipal;
	}
	public void setCheckPrincipal(String checkPrincipal) {
		this.checkPrincipal = checkPrincipal;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	public String doIns(){
		GoodInfo pojo=new GoodInfo(this.goodType,this.goodName,this.goodPrice,this.goodImg,this.goodRemark,this.goodAdddate,this.abatePrice,this.goodStat,
				null,null,null,null,null,null,null);
		boolean bool = this.goodservice.doIns(pojo);
		this.setResultString(String.valueOf(bool));
		return "success";
	}
	public String doDel(){
		boolean bool = this.goodservice.doDel(this.goodId);
		this.setResultString(String.valueOf(bool));
		return "success";
	}
	public String doUpd(){
		GoodInfo pojo = new GoodInfo(this.goodType,this.goodName,this.goodPrice,this.goodImg,this.goodRemark,this.goodAdddate,this.abatePrice,this.goodStat,
				null,null,null,null,null,null,null);
		pojo.setGoodId(this.goodId);
		boolean bool = this.goodservice.doUpd(pojo);
		this.setResultString(String.valueOf(bool));
		return "success";
	}
	public String findByNa(){
		List<GoodInfo> list=this.goodservice.findByNa();
		StringBuffer sb = new StringBuffer();
		Iterator<GoodInfo> it = list.iterator();
		sb.append("<form name = 'f'>" +"<table>" +
		"<tr>"+"<th>商品类别</th>" +"<th>商品名称</th>"+"<th>商品价格</th>"+"<th>商品图像</th>"+"<th>产品介绍</th>"+"<th>上架日期</th>"+"<th>现有库存</th>"+"<th>操作</th>");
		while(it.hasNext()){
			GoodInfo pojo = it.next();
			CheckCheck checkCheck = this.checkservice.findCheckbygoodId(pojo.getGoodId());
			sb.append(
				"<tr>"+"<td>"+pojo.getGoodType().getTypeName()+"</td>" +"<td>"+pojo.getGoodName()+"</td>" +"<td>"+pojo.getGoodPrice()+"</td>" +
				"<td><img src="+pojo.getGoodImg()+" style='width:50px;height:50px'></td>" +"<td>"+pojo.getGoodRemark()+"</td>" +
				"<td>"+pojo.getGoodAdddate()+"</td>" +
				"<td>"+checkCheck.getStatNum()+"</td>" +
				"<td><input type='text' id='st"+pojo.getGoodId()+"'><button id='"+pojo.getGoodId()+"'  onClick='stock(this)' >确认进货</button>" +"<button id='"+pojo.getGoodId()+"'  onClick='stock(this)' >确认退货</button>" +
				"</td>"+
				"</tr>"
				);
		}
		sb.append("</table>" +
				"</form>");
		this.setResultString(sb.toString());
		return "success";
	}
	public String stock(){
		boolean bool = false;
		bool = this.checkservice.addcheckNum(this.goodId, this.statNum);
		this.setResultString(String.valueOf(bool));
		return "numsuccess";
		
	}

	public String findById(){
		List<GoodInfo> list=this.goodservice.findById();
		StringBuffer sb = new StringBuffer();
		Iterator<GoodInfo> it = list.iterator();
		sb.append("<form name = 'f'>" +"<table>" +
		"<tr>"+"<th>商品类别</th>"+"<th>商品名称</th>"+"<th>商品价格</th>"+"<th>商品图像</th>"+"<th>产品介绍</th>"+"<th>上架日期</th>"+"<th>折后价格</th>"+"<th>商品库存</th>"+"<th>操作</th>");
		while(it.hasNext()){
			GoodInfo pojo = it.next();
			sb.append(
				"<tr>" +"<td>"+pojo.getGoodType().getTypeName()+"</td>"+"<td>"+pojo.getGoodName()+"</td>" +"<td>"+pojo.getGoodPrice()+"</td>" +
				"<td><img src="+pojo.getGoodImg()+" style='width:50px;height:50px'></td>" +"<td>"+pojo.getGoodRemark()+"</td>" +
				"<td>"+pojo.getGoodAdddate()+"</td>" +"<td>"+pojo.getAbatePrice()+"</td>" +
				"<td>"+pojo.getGoodStat()+"</td>" +
				"<td><a href='#' onClick='goUpdate("+pojo.getGoodId()+")'>修改</a>&nbsp;" +
						"<a href='#' onclick='goDel("+pojo.getGoodId()+")'>删除</a>"+
				"</td>"+
				"</tr>"
				);
		}
		sb.append("</table>" +
				"</form>");
		this.setResultString(sb.toString());
		return "success";
	}
	/**
	 * 根据商品名称查询
	 * @return
	 */
	public String findbyName(){
		List<GoodInfo> list = this.goodservice.findbyName(goodName, this.pageCurrent, pageSize);
		StringBuffer sb = new StringBuffer();
		sb.append(" <table>");
		sb.append("<tr><td>商品类别</td><td>商品名称</td><td>商品价格</td><td>商品图像</td><td>产品介绍</td><td>上架日期</td><td>折后价格</td><td>商品库存</td><td>操作</td></tr>");
		Iterator<GoodInfo> it = list.iterator();
		while(it.hasNext()){
			GoodInfo pojo = it.next();
			sb.append("<tr><td>"+pojo.getGoodType().getTypeName()+"</td><td>"+pojo.getGoodName()+"</td><td>"+pojo.getGoodPrice()+"</td><td>"+pojo.getGoodImg()+"</td><td>"+pojo.getGoodRemark()+"</td><td>"+pojo.getGoodAdddate()+"</td><td>"+pojo.getAbatePrice()+"</td><td>"+pojo.getGoodStat()+"</td><td> <a href='#' onclick='goUpdate("+pojo.getGoodId()+")'>修改</a>&nbsp; <a href='#' onclick='goDel("+pojo.getGoodId()+")'>删除</a></td></tr>");
			if(list.size()<pageSize){
				for(int i=0;i<pageSize-list.size();i++){
				sb.append("<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
				}
				}
			}
		sb.append("</table>");
		this.setResultString(sb.toString());
		return "success";
	}
	
	public String findCount(){
		int count = this.goodservice.findCountByName(goodName);
		this.setResultString(String.valueOf(count));
		return "success";
	}
}
