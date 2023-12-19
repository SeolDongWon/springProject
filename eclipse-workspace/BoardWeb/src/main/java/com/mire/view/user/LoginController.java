package com.mire.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;

//@Controller
public class LoginController {
	
//	@RequestMapping(value = "/login.do")
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

}
