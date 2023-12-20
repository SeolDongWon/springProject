package backup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;

//@Controller
public class DeleteBoardController{
	
//	@RequestMapping(value = "/deleteBoard.do")
	public String deleteBoard(BoardVO vo,BoardDAO boardDAO ) {
		System.out.println("deleteBoard");

		boardDAO.deleteBoard(vo);
		
		return "redirect:getBoardList.do";
	}
}
