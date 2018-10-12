package com.neusoft.service;

import java.util.List;

import com.neusoft.po.User;

public interface IUserService {
	public User addUser(User user);
	public int updateUser(User user);
	public User deleteUser(User user);
	public User searchUser(User uesr);
	public User loginByUser(User user); 
	//验证是否注册过了
	public List<User> volitelogin(User user);
}
