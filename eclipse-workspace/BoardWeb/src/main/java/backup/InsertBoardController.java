package backup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;

//@Controller
public class InsertBoardController {

//	@RequestMapping(value = "/insertBoard.do")
	public String insertBoard(BoardVO vo, BoardDAO boardDAO) {
		System.out.println("insertBoard");

		boardDAO.insertBoard(vo);

		// 3 화면 네비게이션
		return "redirect:getBoardList.do";
	}
}
