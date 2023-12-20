package backup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mire.biz.user.UserVO;
import com.mire.biz.user.impl.UserDAO;
//@Controller
public class InsertUserController {
//	@RequestMapping(value = "/insertUserController.do")
	public ModelAndView insertUserController(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("InsertUserController");
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
		int insertUserFlag = userDAO.insertUser(vo);
		
//		HttpSession session = request.getSession();
//		session.setAttribute("insertUserFlag", insertUserFlag);

		// 3 화면 네비게이션
		
		ModelAndView mav = new ModelAndView();
		// session 대신 mav.addObject를 사용
		// mav.addObject는 request.setAttribute와 같은 기능
		// redirect시 request가 사라지기 때문에 forward로 전송한다.
		mav.addObject("insertUserFlag", insertUserFlag);
		mav.setViewName("login");
		// 3 화면 네비게이션
		return mav;
	}
}
