package com.cls.service;

import java.util.List;

import com.cls.pojo.Gys;

public interface GysService {
	/**
	 * 根据供应商名称进行分页查询
	 * @param gysName
	 * @param pagecount
	 * @param pagesize
	 * @return
	 */
	public List<Gys> findbyName(String gysName,int pagecount,int pagesize);
	/**
	 * 根据名称查询笔数
	 * @param gysName
	 * @return
	 */
	public int findCountByName(String gysName);
	/**
	 * 查询供应商总数
	 * @return
	 */
	public List<Gys> findByName();

}
