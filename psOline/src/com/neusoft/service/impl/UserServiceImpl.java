/**
 * 
 */
package com.neusoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.UserMapper;
import com.neusoft.po.User;
import com.neusoft.po.UserExample;
import com.neusoft.service.IUserService;

/**
 * @author Administrator
 *
 */
@Service
public class UserServiceImpl implements IUserService{
	@Autowired
	UserMapper uesrMapper;
	@Override
	public User addUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return uesrMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public User deleteUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User searchUser(User uesr) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User loginByUser(User user) {
		// TODO Auto-generated method stub
		return uesrMapper.loginByUser(user);
	}

	@Override
	public List<User> volitelogin(User user) {
		UserExample example = new UserExample();
		String name = user.getUname();
		example.or().andUnameEqualTo(name);
		List<User> userList = uesrMapper.selectByExample(example);
		return userList;
	}
	
}
