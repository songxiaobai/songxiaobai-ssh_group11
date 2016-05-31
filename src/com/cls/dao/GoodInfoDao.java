package com.cls.dao;

import java.util.List;

import com.cls.pojo.GoodInfo;
import com.cls.pojo.GoodType;


public interface GoodInfoDao {
	public List<GoodInfo> findbygoodName(int goodId);
	/**
	 * 根据商品名称进行分页查询
	 * @param goodId 商品编号
	 * @param pagecount 总数
	 * @param pagesize 页数
	 * @return
	 */

	public List<GoodInfo> findbyName(String goodName,int pagecount,int pagesize);
	public List<GoodInfo> findbyType(GoodType goodType,int pagecount,int pagesize);
	/**
	 * 根据编号查询笔数
	 * @param goodId 商品编号
	 * @return
	 */
	public int findCountByName(String goodName);
	/**
	 * 新增商品
	 * @param pojo
	 * @return
	 */
	public boolean doIns(GoodInfo pojo);
	/**
	 * 修改之前通过编号查找商品
	 * @param goodId 商品编号
	 * @return
	 */
	public List<GoodInfo> findById();
	
	public List<GoodInfo> findByNa();
	/**
	 * 修改
	 * @param pojo
	 * @return
	 */
	public boolean doUpd(GoodInfo pojo);
	/**
	 * 删除
	 * @param goodId 商品编号
	 * @return
	 */
	public boolean doDel(int goodId);
}
