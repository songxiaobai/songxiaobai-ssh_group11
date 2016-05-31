package com.cls.service.impl;

import java.util.List;

import com.cls.dao.UserDao;
import com.cls.pojo.UserInfo;
import com.cls.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDao userdao;
	
	public UserDao getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}

	public List<UserInfo> findbyAll() {
		return this.userdao.findbyAll();
	}
	public List<UserInfo> findbyuserName(int userId) {
		return this.userdao.findbyuserName(userId);
	}
	public boolean doUpdUser(int userId,int userState){
		return this.userdao.doUpdUser(userId, userState);
	}
	public UserInfo login(String telphone,String password){
		return this.userdao.login(telphone, password);
	}

}
