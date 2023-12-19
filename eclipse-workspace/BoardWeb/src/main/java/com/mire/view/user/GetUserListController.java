package com.mire.view.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;
@Controller
public class GetUserListController{
	@RequestMapping(value = "/getUserList.do")
	public ModelAndView getUserList(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("GetUserListController");

		// 1 사용자 입력정보 추출(검색 기능은 나중에 구현)
		
		// 2 DB연동처리
		UserVO vo = new UserVO();
		UserDAO userDAO = new UserDAO();
		ArrayList<UserVO> userList = userDAO.getUserList(vo);

		// 3 검색 결과를 세션에 저장하고 목록 화면으로 이동한다.
//		HttpSession session = request.getSession();
//		session.setAttribute("userList", userList);
		
		ModelAndView mav = new ModelAndView();
		// session 대신 mav.addObject를 사용
		// mav.addObject는 request.setAttribute와 같은 기능
		// redirect시 request가 사라지기 때문에 forward로 전송한다.
		mav.addObject("userList", userList);
		mav.setViewName("getUserList");
		// 3 화면 네비게이션
		return mav;
	}

}
