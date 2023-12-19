package com.mire.view.user;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;

@Controller
public class UserController {
	
	@RequestMapping(value = "/login.do")
	public String login(UserVO vo, UserDAO userDAO,HttpSession session) {
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
		return "login";
	}
	
	@RequestMapping(value = "/insertUserController.do")
	public String insertUserController(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
		int insertUserFlag = userDAO.insertUser(vo);
		model.addAttribute("insertUserFlag", insertUserFlag);
		return "login";
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
	public String handleRequest(UserVO vo, UserDAO userDAO,HttpSession session,Model model)  {
		int deleteUserFlag = userDAO.deleteUser(vo);
		session.invalidate();
		model.addAttribute("deleteUserFlag", deleteUserFlag);
		return "login";
	}
}
