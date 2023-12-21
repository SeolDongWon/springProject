package com.seolmarket.control.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seolmarket.biz.member.MemberService;
import com.seolmarket.biz.member.MemberVO;

@Controller
//@SessionAttributes()
public class MemberController {
	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/insertMemberController.do")
	public String insertMemberController(MemberVO memberVO, Model model) {
		System.out.println("insertMemberController.do");
		int insertMemberFlag = memberService.insertMember(memberVO);
		model.addAttribute("insertMemberFlag", insertMemberFlag);
		return "board/alertView";
	}

//	@RequestMapping(value = "/login.do", method=RequestMethod.GET)
//	public String loginView(@ModelAttribute("user") UserVO vo) {
//		System.out.println("loginView");
//		vo.setId("test");
//		vo.setPassword("test123");
//		return"login";
//	}

	@RequestMapping(value = "/loginForm.do")
	public String loginForm(MemberVO memberVO,Model model) {
		return"board/loginForm";
	}

	@RequestMapping(value = "/login.do")
	public String login(MemberVO memberVO, Model model) {
		System.out.println("login.do");
//			if(vo.getId()==null||vo.getId().equals("")) {
//				throw new IllegalArgumentException("아디입력하세요");
//			}

		int loginMemberFlag = memberService.loginMember(memberVO);
		model.addAttribute("loginMemberFlag", loginMemberFlag);
		return "board/alertView";

//		if (user != null) {
//			session.setAttribute("user", user);
//			return"redirect:getBoardList.do";
//		} else {
//			return"login";
//		}
	}

	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "board/login";
	}

//	
//	@RequestMapping(value = "/idDoubleCheck.do")
//	public String idDoubleCheck(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
//		int idCheck = userDAO.idDoubleCheck(vo);
//		model.addAttribute("idCheck", idCheck);
//		return "idDoubleCheck";
//	}
//	
//
//	@RequestMapping(value = "/updateUserController.do")
//	public String updateUserController(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
//		int updateUserFlag = userDAO.updateUser(vo);
//		session.invalidate();
//		model.addAttribute("updateUserFlag", updateUserFlag);
//		return "alertView";
//	}
//	
//	@RequestMapping(value = "/deleteUserController.do")
//	public String deleteUser(UserVO vo, UserDAO userDAO,HttpSession session,Model model)  {
//		int deleteUserFlag = userDAO.deleteUser(vo);
//		session.invalidate();
//		model.addAttribute("deleteUserFlag", deleteUserFlag);
//		return "alertView";
//	}
//	
//	@RequestMapping(value = "/getUserList.do")
//	public String getUserList(UserVO vo, UserDAO userDAO,HttpSession session,Model model) {
//		ArrayList<UserVO> userList = userDAO.getUserList(vo);
//		model.addAttribute("userList", userList);
//		return "getUserList";
//	}

}
