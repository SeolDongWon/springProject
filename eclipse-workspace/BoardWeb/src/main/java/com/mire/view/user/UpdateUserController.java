package com.mire.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;
@Controller
public class UpdateUserController{
	@RequestMapping(value = "/updateUserController.do")
	public ModelAndView updateUserController(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("UpdateUserController");
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
		int updateUserFlag = userDAO.updateUser(vo);
		
		HttpSession session = request.getSession();
		session.invalidate();
//		session = request.getSession();
//		session.setAttribute("updateUserFlag", updateUserFlag);
		
		ModelAndView mav = new ModelAndView();
		// session 대신 mav.addObject를 사용
		// mav.addObject는 request.setAttribute와 같은 기능
		// redirect시 request가 사라지기 때문에 forward로 전송한다.
		mav.addObject("updateUserFlag", updateUserFlag);
		mav.setViewName("login");
		// 3 화면 네비게이션
		return mav;
	}
}
