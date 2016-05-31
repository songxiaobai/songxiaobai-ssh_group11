package com.cls.service;

import com.cls.pojo.CheckCheck;

public interface CheckCheckService {
	/**
	 * 通过商品ID查找商品库存
	 * @param goodId
	 * @return
	 */
	public CheckCheck findCheckbygoodId(int goodId);
	/**
	 * 通过商品ID修改商品库存
	 * @param goodsId
	 * @param checkNum
	 * @return
	 */
	public boolean addcheckNum(int goodsId,int store);
	
	public boolean minuxcheckNum(int goodId,int store);
}
