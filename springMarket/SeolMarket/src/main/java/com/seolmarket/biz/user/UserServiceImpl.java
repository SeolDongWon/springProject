package com.seolmarket.biz.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		System.out.println("UserServiceImpl()");
	}

	@Override
	public int userInsert(UserVO vo) {
		return userDAO.userInsert(vo);
	}

	@Override
	public UserVO userLogin(UserVO vo) {
		return userDAO.userLogin(vo);
	}
	
}