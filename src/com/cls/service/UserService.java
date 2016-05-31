package com.cls.service;

import java.util.List;

import com.cls.pojo.UserInfo;

public interface UserService {
	public List<UserInfo> findbyAll();
	public List<UserInfo> findbyuserName(int userId);
	public boolean doUpdUser(int userId,int userState);
	public UserInfo login(String telphone,String password);
}
