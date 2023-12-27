package com.mire.biz.board.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.mire.biz.board.BoardVO;

@Repository
public class BoardDAOJPA{
	// EntityManager는 Autowired로 가져오면 안됨
	@PersistenceContext
	private EntityManager em;
	

	// CRUD 기능의 메소드 구현
	// 글 등록
	public void insertBoard(BoardVO vo){
		System.out.println("===>JPA insertBoard()");
		em.persist(vo);
	}
	// 글 수정
	public void updateBoard(BoardVO vo) {
		System.out.println("===>JPA updateBoard()");
		em.merge(vo);
	}
	// 글 삭제
	public void deleteBoard(BoardVO vo) {
		System.out.println("===>JPA deleteBoard()");
		BoardVO boardVO = em.find(BoardVO.class, vo.getSeq());
		em.remove(boardVO);
	}
	// 글 상세 조회
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===>JPA getBoard()");
		return em.find(BoardVO.class, vo.getSeq());
	}
	// 글 목록 조회
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> jpa로 getBoardList() 기능 처리");
        String jpasql = "select b from BoardVO b order by b.seq";
         return em.createQuery(jpasql).getResultList();
		
//		if(vo.getSearchCondition().equals("TITLE")) {
//			return em.selectList("BoardDAO.getBoardList_t",vo);			
//		}else {
//			return em.selectList("BoardDAO.getBoardList_c",vo);
//		}
	}
}