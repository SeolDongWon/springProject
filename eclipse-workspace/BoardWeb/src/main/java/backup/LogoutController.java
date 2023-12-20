package backup;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
public class LogoutController {
	
//	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		System.out.println("LogoutController");

		// 1 브라우저와 연결된 세션 객체를 강제 종료한다.
		session.invalidate();
		
		// 3 화면 네비게이션
		return "login";
		
	}
}
