package com.mire.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;
import com.mire.view.controller.Controller;

public class InsertUserController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("InsertUserController");
		// 1 사용자 입력정보 추출
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String role = request.getParameter("role");

		System.out.println("InsertUserController : "+id+password+name+role);
		
		
		// 2 DB연동처리
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setRole(role);

		UserDAO userDAO = new UserDAO();
		int insertUserFlag = userDAO.insertUser(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("insertUserFlag", insertUserFlag);

		// 3 화면 네비게이션
		return "login";
	}
}
