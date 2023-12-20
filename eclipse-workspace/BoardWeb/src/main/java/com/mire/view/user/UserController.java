package com.mire.view.user;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;

@Controller
public class UserController {
	
	@RequestMapping(value = "/login.do", method=RequestMethod.GET)
	public String loginView(@ModelAttribute("user") UserVO vo) {
		System.out.println("loginView");
		vo.setId("test");
		vo.setPassword("test123");
		return"login";
	}
	
	@RequestMapping(value = "/login.do", method=RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO,HttpSession session) {
		System.out.println("login");
		if(vo.getId()==null||vo.getId().equals("")) {
			throw new IllegalArgumentException("아디입력하세요");
		}
		
		UserVO user = userDAO.getUser(vo);
		if (user != null) {
			session.setAttribute("user", user);
			return"redirect:getBoardList.do";
		} else {
			return"login";
		}
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "/updateUserController.do")
	public String updateUserController(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
		int updateUserFlag = userDAO.updateUser(vo);
		session.invalidate();
		model.addAttribute("updateUserFlag", updateUserFlag);
		return "alertView";
	}
	
	@RequestMapping(value = "/insertUserController.do")
	public String insertUserController(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
		int insertUserFlag = userDAO.insertUser(vo);
		model.addAttribute("insertUserFlag", insertUserFlag);
		return "alertView";
	}
	
	@RequestMapping(value = "/idDoubleCheck.do")
	public String idDoubleCheck(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
		int idCheck = userDAO.idDoubleCheck(vo);
		model.addAttribute("idCheck", idCheck);
		return "idDoubleCheck";
	}
	
	@RequestMapping(value = "/getUserList.do")
	public String getUserList(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
		ArrayList<UserVO> userList = userDAO.getUserList(vo);
		model.addAttribute("userList", userList);
		return "getUserList";
	}
	
	@RequestMapping(value = "/deleteUserController.do")
	public String deleteUser(UserVO vo, UserDAO userDAO,HttpSession session,Model model)  {
		int deleteUserFlag = userDAO.deleteUser(vo);
		session.invalidate();
		model.addAttribute("deleteUserFlag", deleteUserFlag);
		return "alertView";
	}
}
