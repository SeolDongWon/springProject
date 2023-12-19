package com.mire.view.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;
//@Controller
public class UpdateBoardController{
	
//	@RequestMapping(value = "/updateBoard.do")
	public String updateBoard(BoardVO vo, BoardDAO boardDAO) {
		System.out.println("updateBoard");

		boardDAO.updateBoard(vo);
		// 3 화면 네비게이션
		return "redirect:getBoardList.do";
	}
}
