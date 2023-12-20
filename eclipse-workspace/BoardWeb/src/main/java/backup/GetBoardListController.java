package backup;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;
//@Controller
public class GetBoardListController{
	
//	@RequestMapping(value = "/getBoardList.do")
	public String getBoardList(BoardVO vo, BoardDAO boardDAO,Model model) {
		System.out.println("getBoardList");
		List<BoardVO> boardList = boardDAO.getBoardList(vo);

		model.addAttribute("boardList", boardList);
			
		// 3 화면 네비게이션
		return "getBoardList";
	}
}
