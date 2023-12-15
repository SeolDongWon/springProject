package com.mire.biz.board;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BoardServiceClient {

	public static void main(String[] args) {
		// 스프링컨테이너 객체 생성
		AbstractApplicationContext beanFactory = new GenericXmlApplicationContext("applicationContext.xml");

		BoardService boardService = (BoardService) beanFactory.getBean("boardService");

		// 글 등록
		BoardVO vo = new BoardVO();
		vo.setSeq(1);
		vo.setTitle("오라클33");
		vo.setWriter("SD33");
		vo.setContent("안녕오라클33");
		boardService.insertBoard(vo);

		// 글등록
		List<BoardVO> list = boardService.getBoardList(vo);
		for (BoardVO data : list) {
			System.out.println("===" + data.toString());
		}

		beanFactory.close();

	}
}
