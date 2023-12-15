package com.mire.biz.board;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BoardServiceClient {

	public static void main(String[] args) {
		// �����������̳� ��ü ����
		AbstractApplicationContext beanFactory = new GenericXmlApplicationContext("applicationContext.xml");

		BoardService boardService = (BoardService) beanFactory.getBean("boardService");

		// �� ���
		BoardVO vo = new BoardVO();
		vo.setSeq(1);
		vo.setTitle("����Ŭ33");
		vo.setWriter("SD33");
		vo.setContent("�ȳ����Ŭ33");
		boardService.insertBoard(vo);

		// �۵��
		List<BoardVO> list = boardService.getBoardList(vo);
		for (BoardVO data : list) {
			System.out.println("===" + data.toString());
		}

		beanFactory.close();

	}
}
