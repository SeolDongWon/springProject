package com.mire.view.board;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mire.biz.board.BoardVO;
import com.mire.biz.board.impl.BoardDAO;

@Controller
public class BoardController{
	
	@RequestMapping(value = "/deleteBoard.do")
	public String deleteBoard(BoardVO vo,BoardDAO boardDAO ) {
		boardDAO.deleteBoard(vo);
		return "redirect:getBoardList.do";
	}
	
	@RequestMapping(value = "/getBoard.do")
	public String getBoard(BoardVO vo,BoardDAO boardDAO, Model model ) {
		BoardVO board = boardDAO.getBoard(vo);
		model.addAttribute("board",board);
		return "getBoard";
	}
	
	@RequestMapping(value = "/getBoardList.do")
	public String getBoardList(BoardVO vo, BoardDAO boardDAO,Model model) {
		List<BoardVO> boardList = boardDAO.getBoardList(vo);
		model.addAttribute("boardList", boardList);
		return "getBoardList";
	}
	
	@RequestMapping(value = "/insertBoard.do")
	public String insertBoard(BoardVO vo, BoardDAO boardDAO) {
		boardDAO.insertBoard(vo);
		return "redirect:getBoardList.do";
	}
	
	@RequestMapping(value = "/updateBoard.do")
	public String updateBoard(BoardVO vo, BoardDAO boardDAO) {
		boardDAO.updateBoard(vo);
		return "redirect:getBoardList.do";
	}
}
