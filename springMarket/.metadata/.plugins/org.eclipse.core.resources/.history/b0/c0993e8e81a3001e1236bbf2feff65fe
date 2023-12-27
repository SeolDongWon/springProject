package com.seolmarket.biz.board;

import java.util.List;

public class BoardServiceClient {
	public static void main(String[] args) {
		BoardDAO boardDAO = new BoardDAO();
		
		BoardVO vo = new BoardVO();
		vo.setTitle("제목입력");
		vo.setWriter("작성자입력");
		vo.setContent("내용입력");
		boardDAO.boardInsert(vo);
		
		BoardSearchVO svo= new BoardSearchVO();
		
		List<BoardVO> boardList = boardDAO.boardSelectList(svo);
		for(BoardVO boardVO : boardList) {
			System.out.println("--->" + boardVO.toString());
		}
		
	}
}
