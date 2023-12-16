package com.mire.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mire.biz.user.UserService;
import com.mire.biz.user.UserVO;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		System.out.println("UserServiceImpl()");
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
//	public void setUserDAO(UserDAO userDAO) {
//		this.userDAO = userDAO;
//	} 
//	bean property는 set이 있어야한다
}