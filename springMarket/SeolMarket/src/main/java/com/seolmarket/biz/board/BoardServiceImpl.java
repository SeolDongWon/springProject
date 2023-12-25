package com.seolmarket.biz.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("boardService") // "boardService"에 오토와이어
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
//	private LogAdvice log;
//	private LogAdvice2 log;

	public BoardServiceImpl() {
		System.out.println("BoardServiceImpl()");
	}

	@Override
	public void boardInsert(BoardVO vo) {
		boardDAO.boardInsert(vo); // 비지니스로직
	}
	
	@Override	
	public List<BoardVO> boardSelectList(BoardSearchVO vo) {
//		log.printLoging();
		return boardDAO.boardSelectList(vo);
	}

	@Override
	public void boardClassInsert(BoardClassVO vo) {
		boardDAO.boardClassInsert(vo);
		
	}

	@Override
	public List<BoardClassVO> boardClassSelectList(BoardClassVO vo) {
		return boardDAO.boardClassSelectList(vo);
	}

	@Override
	public BoardClassVO boardClassSelect(BoardSearchVO vo) {
		return boardDAO.boardClassSelect(vo);
	}

	@Override
	public void boardCategoryInsert(BoardCategoryVO vo) {
		boardDAO.boardCategoryInsert(vo);
	}

	@Override
	public List<BoardCategoryVO> boardCategorySelectList(BoardSearchVO vo) {
		return boardDAO.boardCategorySelectList(vo);
	}

	@Override
	public void boardClassOnOff(BoardClassVO vo) {
		boardDAO.boardClassOnOff(vo);
	}

	@Override
	public void boardCategoryOnOff(BoardCategoryVO vo) {
		boardDAO.boardCategoryOnOff(vo);
	}
	
//	@Override
//	public void updateBoard(BoardVO vo) {
//		boardDAO.updateBoard(vo);
//	}
//
//	@Override
//	public void deleteBoard(BoardVO vo) {
//		boardDAO.deleteBoard(vo);
//	}
//
//	@Override
//	public BoardVO getBoard(BoardVO vo) {
//		return boardDAO.getBoard(vo);
//	}
//

	

}