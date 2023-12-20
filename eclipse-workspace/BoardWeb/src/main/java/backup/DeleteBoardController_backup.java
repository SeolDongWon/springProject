package backup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;

//@Controller
public class DeleteBoardController_backup{

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("DeleteBoardController");

		// 1 사용자 입력 정보 추출
		String seq = request.getParameter("seq");

		// 2 DB 연동 처리
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));

		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(vo);
		
		ModelAndView mav = new ModelAndView();
		// mav.addObject는 request.setAttribute와 같은 기능
		// redirect시 request가 사라지기 때문에 forward로 전송한다.
		mav.setViewName("redirect:getBoardList.do");
		// 3 화면 네비게이션
		return mav;

	}
}
