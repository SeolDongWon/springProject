package com.mire.view.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;
//@Controller
public class GetBoardController{
	
//	@RequestMapping(value = "/getBoard.do")
	public String getBoard(BoardVO vo,BoardDAO boardDAO, Model model ) {
		System.out.println("getBoard");

		BoardVO board = boardDAO.getBoard(vo);

		model.addAttribute("board",board);
		// session 대신 mav.addObject를 사용
		// mav.addObject는 request.setAttribute와 같은 기능
		// redirect시 request가 사라지기 때문에 forward로 전송한다.
		// 3 화면 네비게이션
		return "getBoard";

	}
}
