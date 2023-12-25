package com.seolmarket.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.seolmarket.biz.user.UserService;
import com.seolmarket.biz.user.UserVO;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/userInsert.do")
	public String userInsert(UserVO userVO, Model model) {
		System.out.println("userInsert");
//		int insertUserFlag = userDAO.insertUser(vo);
		int userInsertFlag = userService.userInsert(userVO);
		model.addAttribute("userInsertFlag", userInsertFlag);
		return "board/alertView";
	}
	
	
	
//	@RequestMapping(value = "/login.do", method=RequestMethod.GET)
//	public String loginView(@ModelAttribute("user") UserVO vo) {
//		System.out.println("loginView");
//		vo.setId("test");
//		vo.setPassword("test123");
//		return"login";
//	}
	
	@RequestMapping(value = "/userLogin.do", method=RequestMethod.POST)
	public String userLogin(UserVO userVO,HttpSession session,Model model) {
		System.out.println("userLogin");
		
//		if(vo.getId()==null||vo.getId().equals("")) {
//			throw new IllegalArgumentException("아디입력하세요");
//		}
		
		userVO = userService.userLogin(userVO); 
		
		if (userVO != null) {
			session.setAttribute("userVO", userVO);
			model.addAttribute("userLoginFlag", "1");
		} else {
			model.addAttribute("userLoginFlag", "0");
		}
		return "board/alertView";
	}
	
	@RequestMapping(value = "/userLogout.do")
	public String userLogout(HttpSession session, Model model) {
		session.invalidate();
		model.addAttribute("userLogoutFlag","1");
		return "board/alertView";
	}
	
//	@RequestMapping(value = "/updateUserController.do")
//	public String updateUserController(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
//		int updateUserFlag = userDAO.updateUser(vo);
//		session.invalidate();
//		model.addAttribute("updateUserFlag", updateUserFlag);
//		return "alertView";
//	}
	

	
//	@RequestMapping(value = "/idDoubleCheck.do")
//	public String idDoubleCheck(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
//		int idCheck = userDAO.idDoubleCheck(vo);
//		model.addAttribute("idCheck", idCheck);
//		return "idDoubleCheck";
//	}
//	
//	@RequestMapping(value = "/getUserList.do")
//	public String getUserList(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
//		ArrayList<UserVO> userList = userDAO.getUserList(vo);
//		model.addAttribute("userList", userList);
//		return "getUserList";
//	}
//	
//	@RequestMapping(value = "/deleteUserController.do")
//	public String deleteUser(UserVO vo, UserDAO userDAO,HttpSession session,Model model)  {
//		int deleteUserFlag = userDAO.deleteUser(vo);
//		session.invalidate();
//		model.addAttribute("deleteUserFlag", deleteUserFlag);
//		return "alertView";
//	}
}
