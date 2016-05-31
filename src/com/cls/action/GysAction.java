package com.cls.action;

import java.util.Iterator;
import java.util.List;

import com.cls.pojo.Gys;
import com.cls.service.GysService;
import com.opensymphony.xwork2.ActionSupport;

public class GysAction extends ActionSupport{
	private GysService gysservice;
	private Integer gysId;
	private String gysName;
	private String gysRemark;
	private Integer gysTel;
	private String gysAddress;
	private String gysLinkman;
	private int pagecount;
	private int pageSize;
	private int pageCurrent;
	private String resultString;
	

	public GysService getGysservice() {
		return gysservice;
	}
	public void setGysservice(GysService gysservice) {
		this.gysservice = gysservice;
	}
	public Integer getGysId() {
		return gysId;
	}
	public void setGysId(Integer gysId) {
		this.gysId = gysId;
	}
	public String getGysName() {
		return gysName;
	}
	public void setGysName(String gysName) {
		this.gysName = gysName;
	}
	public String getGysRemark() {
		return gysRemark;
	}
	public void setGysRemark(String gysRemark) {
		this.gysRemark = gysRemark;
	}
	public Integer getGysTel() {
		return gysTel;
	}
	public void setGysTel(Integer gysTel) {
		this.gysTel = gysTel;
	}
	public String getGysAddress() {
		return gysAddress;
	}
	public void setGysAddress(String gysAddress) {
		this.gysAddress = gysAddress;
	}
	public String getGysLinkman() {
		return gysLinkman;
	}
	public void setGysLinkman(String gysLinkman) {
		this.gysLinkman = gysLinkman;
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
	public String findByName(){
		
		List<Gys> list=this.gysservice.findByName();
		StringBuffer sb=new StringBuffer();
		Iterator<Gys> it=list.iterator();
		sb.append("<form name = 'f'>" +"<table>" +
				"<tr>" +"<th>供应商名称</th>"+"<th>描述</th>"+"<th>联系电话</th>"+"<th>联系地址</th>"+"<th>供应商联系人</th>"+"<th>操作</th>");
		while(it.hasNext()){
			Gys pojo=it.next();
			sb.append(
					"<tr>" +"<td>"+pojo.getGysName()+"</td>" +"<td>"+pojo.getGysRemark()+"</td>" +
					"<td>"+pojo.getGysTel()+"</td>" +"<td>"+pojo.getGysAddress()+"</td>" +"<td>"+pojo.getGysLinkman()+"</td>" +
					"<td><a href='#' >进货</a>&nbsp;<a href='#' >退货</a>" +"</td>"+"</tr>");
		}
		sb.append("</table>" +
		"</form>");
		this.setResultString(sb.toString());
		return "success";
	}
	public String findbyName(){
		List<Gys> list = this.gysservice.findbyName(gysName, this.pageCurrent, pageSize);
		StringBuffer sb = new StringBuffer();
		sb.append(" <table>");
		sb.append("<tr><td>供应商名称</td><td>描述</td><td>联系电话</td><td>联系地址</td><td>供应商联系人</td><td>操作</td></tr>");
		Iterator<Gys> it = list.iterator();
		while(it.hasNext()){
			Gys pojo = it.next();
			sb.append("<tr><td>"+pojo.getGysName()+"</td><td>"+pojo.getGysRemark()+"</td><td>"+pojo.getGysTel()+"</td><td>"+pojo.getGysAddress()+"</td><td>"+pojo.getGysLinkman()+"</td><td> <a href='#' >进货</a>&nbsp;<a href='#' >退货</a></td></tr>");
			if(list.size()<pageSize){
				for(int i=0;i<pageSize-list.size();i++){
				sb.append("<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>");
				}
				}
			}
		sb.append("</table>");
		this.setResultString(sb.toString());
		return "success";
	}
	public String findCount(){
		int count = this.gysservice.findCountByName(gysName);
		this.setResultString(String.valueOf(count));
		return "success";
	}

}
