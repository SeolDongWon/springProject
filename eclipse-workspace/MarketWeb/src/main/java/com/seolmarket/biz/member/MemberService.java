package com.seolmarket.biz.member;

public interface MemberService {

	// CRUD 기능의 메소드 구현
	// 회원등록
	int insertMember(MemberVO memberVO);
	
	int loginMember(MemberVO memberVO);

}