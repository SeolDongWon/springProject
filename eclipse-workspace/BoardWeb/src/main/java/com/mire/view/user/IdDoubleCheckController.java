package com.mire.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;
import com.mire.view.controller.Controller;

public class IdDoubleCheckController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("IdDoubleCheckController");
		// 1 사용자 입력정보 추출
		
		String id = request.getParameter("id");
		

		// 2 DB연동처리
		
		UserVO vo = new UserVO();
		vo.setId(id);
		UserDAO userDAO = new UserDAO();
		int idCheck = userDAO.idDoubleCheck(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("idCheck", idCheck);
		

		// 3 화면 네비게이션
		return "idDoubleCheck";
	}
}
