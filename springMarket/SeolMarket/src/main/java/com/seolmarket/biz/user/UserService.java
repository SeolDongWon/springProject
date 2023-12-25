package com.seolmarket.biz.user;

public interface UserService {

	// CRUD 기능의 메소드 구현
	// 회원가입
	int userInsert(UserVO vo);
	
	// 로그인
	UserVO userLogin(UserVO vo);

}