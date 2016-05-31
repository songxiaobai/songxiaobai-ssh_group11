package com.cls.dao;

import com.cls.pojo.GoodInfo;
import com.cls.pojo.Gys;


public interface StockDao {
	/**
	 * 
	 * @param goodId通过商品ID查找商品名称
	 * @return
	 */
	public GoodInfo findById(int goodId);
	/**
	 * 
	 * @param gysId通过供应商ID查找供应商名称
	 * @return
	 */
	public Gys findbyId(int gysId);
	/**
	 * 新增
	 * @param pojo
	 * @return
	 */
	public boolean doIns(GoodInfo pojo);
	

}
