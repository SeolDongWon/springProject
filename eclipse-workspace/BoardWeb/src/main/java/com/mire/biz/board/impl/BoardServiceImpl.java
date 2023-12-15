package com.mire.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mire.biz.board.BoardService;
import com.mire.biz.board.BoardVO;

@Service("boardService")
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
		if(vo.getSeq()==0) {
			throw new IllegalArgumentException("0�� ���� ����� �� �����ϴ�.");
		}
		//�α�
//		log.printLoging();
//		System.out.println("����-�����Ͻ����� ���� �� ����");
		boardDAO.insertBoard(vo); // �����Ͻ�����
//		System.out.println("����-�����Ͻ����� ���� �� ����");
		//����ó��
		//Ʈ������
		//�α�
		// ���� ���� ������������� ª�Ƶ� �ΰ����� �ڵ尡 ���Ƽ� �ڵ尡 �������
		// �̷� ������ �ذ��ϱ� ���� �����Ͻ������� �ٸ� �ڵ带 �и��ϴ°� AOP
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
