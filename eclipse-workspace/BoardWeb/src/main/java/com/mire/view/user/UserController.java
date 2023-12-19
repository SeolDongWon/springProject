package com.mire.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;

@Controller
public class UserController {
	
	@RequestMapping(value = "/login.do")
	public String login(UserVO vo, UserDAO userDAO,HttpSession session) {
		System.out.println("LoginController");
		
		UserVO user = userDAO.getUser(vo);


		// 3 화면 네비게이션

		if (user != null) {
			session.setAttribute("user", user);
			return"redirect:getBoardList.do";
		} else {
			return"login";
		}
	
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		System.out.println("LogoutController");

		// 1 브라우저와 연결된 세션 객체를 강제 종료한다.
		session.invalidate();
		
		// 3 화면 네비게이션
		return "login";
		
	}

}
