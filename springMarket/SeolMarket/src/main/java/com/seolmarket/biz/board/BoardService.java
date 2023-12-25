package com.seolmarket.biz.board;

import java.util.List;

public interface BoardService {

//	// 글 등록
	void boardInsert(BoardVO vo);
//	// 글 목록 조회
	List<BoardVO> boardSelectList(BoardSearchVO vo);
//	// 글 수정
//	void updateBoard(BoardVO vo);
//
//	// 글 삭제
//	void deleteBoard(BoardVO vo);
//
//	// 글 상세 조회
//	BoardVO getBoard(BoardVO vo);
//
	//게시판 생성
	void boardClassInsert(BoardClassVO vo);
	//게시판 목록 조회
	List<BoardClassVO> boardClassSelectList(BoardClassVO vo);
	//게시판 이름 조회
	BoardClassVO boardClassSelect(BoardSearchVO vo);
	//게시판 온오프
	void boardClassOnOff(BoardClassVO vo);
		
	//카테고리 생성
	void boardCategoryInsert(BoardCategoryVO vo);
	//카테고리 목록 조회
	List<BoardCategoryVO> boardCategorySelectList(BoardSearchVO vo);
	//카테고리 온오프
	void boardCategoryOnOff(BoardCategoryVO vo);

}