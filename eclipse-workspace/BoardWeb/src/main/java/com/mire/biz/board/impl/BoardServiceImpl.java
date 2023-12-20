package com.mire.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mire.biz.board.BoardService;
import com.mire.biz.board.BoardVO;

@Service("boardService") // "boardService"에 오토와이어
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
//	private LogAdvice log;
//	private LogAdvice2 log;

	public BoardServiceImpl() {
//		this.log = new LogAdvice2();
	}

	@Override
	public void insertBoard(BoardVO vo) {
//		if(vo.getSeq()==0) {
//			throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
//		}
		//로깅
//		log.printLoging();
//		System.out.println("공통-비지니스로직 수행 전 동작");
		boardDAO.insertBoard(vo); // 비지니스로직
//		System.out.println("공통-비지니스로직 수행 후 동작");
		//예외처리
		//트랜젝션
		//로깅
		// 위와 같이 비니지스로직이 짧아도 부가적인 코드가 많아서 코드가 길어진다
		// 이런 문제를 해결하기 위해 비지니스로직과 다른 코드를 분리하는게 AOP
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
//		log.printLoging();
		return boardDAO.getBoardList(vo);
	}

}