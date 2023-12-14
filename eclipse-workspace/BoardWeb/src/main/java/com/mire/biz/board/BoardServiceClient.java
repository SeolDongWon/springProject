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
		vo.setTitle("스프링");
		vo.setWriter("SDW");
		vo.setContent("안녕스프링");
		boardService.insertBoard(vo);

		// 글등록
		List<BoardVO> list = boardService.getBoardList(vo);
		for (BoardVO data : list) {
			System.out.println("===" + data.toString());
		}

		beanFactory.close();

	}
}
