package com.mire.biz.board.impl;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mire.biz.board.BoardVO;

@Repository
public class BoardDAOMybatis{
	@Autowired
	private SqlSessionTemplate mybatis;
	

	// CRUD 기능의 메소드 구현
	// 글 등록
	public void insertBoard(BoardVO vo){
		System.out.println("===>Mybatis insertBoard()");
		mybatis.insert("BoardDAO.insertBoard",vo);
//		mybatis.commit();
	}
	// 글 수정
	public void updateBoard(BoardVO vo) {
		System.out.println("===>Mybatis updateBoard()");
		mybatis.update("BoardDAO.updateBoard",vo);
	}
	// 글 삭제
	public void deleteBoard(BoardVO vo) {
		System.out.println("===>Mybatis deleteBoard()");
		mybatis.delete("BoardDAO.deleteBoard",vo);
	}
	// 글 상세 조회
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===>Mybatis getBoard()");
		return mybatis.selectOne("BoardDAO.getBoard",vo);
	}
	// 글 목록 조회
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===>Mybatis getBoardList()");
		if(vo.getSearchCondition().equals("TITLE")) {
			return mybatis.selectList("BoardDAO.getBoardList_t",vo);			
		}else {
			return mybatis.selectList("BoardDAO.getBoardList_c",vo);
		}
	}
}