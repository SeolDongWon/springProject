package com.mire.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;
//@Controller
public class IdDoubleCheckController {
//	@RequestMapping(value = "/idDoubleCheck.do")
	public ModelAndView idDoubleCheck(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("IdDoubleCheckController");
		// 1 사용자 입력정보 추출
		
		String id = request.getParameter("id");
		

		// 2 DB연동처리
		
		UserVO vo = new UserVO();
		vo.setId(id);
		UserDAO userDAO = new UserDAO();
		int idCheck = userDAO.idDoubleCheck(vo);
		
//		HttpSession session = request.getSession();
//		session.setAttribute("idCheck", idCheck);
		
		ModelAndView mav = new ModelAndView();
		// session 대신 mav.addObject를 사용
		// mav.addObject는 request.setAttribute와 같은 기능
		// redirect시 request가 사라지기 때문에 forward로 전송한다.
		mav.addObject("idCheck", idCheck);
		mav.setViewName("idDoubleCheck");
		// 3 화면 네비게이션
		return mav;
	}
}
