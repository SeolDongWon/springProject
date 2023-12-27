package com.mire.biz.board;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class BoardServiceClient {
	public static void main(String[] args) {
		// EntityManager 생성
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPAProject");
		EntityManager em = emf.createEntityManager();
		// Transaction 생성
		EntityTransaction etx = em.getTransaction();

		try {
			// CURD작업을 처리한다
			etx.begin();

			Board board = new Board();
			board.setTitle("JPA Test");
			board.setWriter("설동원");
			board.setContent("이제 마이바티스 안써");

			// 글 등록(insert)
			em.persist(board);

			// 글 목록 조회
			// JPA로 조회하는 쿼리를 쓸 때는 DB테이블이 아니라 Board클래스라고 생각하고 접근
			String jpasql = "select b from Board b order by b.seq desc";
			List<Board> boardList = em.createQuery(jpasql, Board.class).getResultList();

			// 콘솔창 출력
			for (Board data : boardList) {
				System.out.println("**********" + data.toString());
			}

			// 트랜잭션 커밋
			etx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			// 문제가 생겼을 시 롤백
			etx.rollback();
		} finally {
			em.close();
		}
		emf.close();
	}
}
