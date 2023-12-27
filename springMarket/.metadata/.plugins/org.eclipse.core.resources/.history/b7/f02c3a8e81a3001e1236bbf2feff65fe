package com.seolmarket.biz.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.seolmarket.biz.util.SqlSessionFactoryBean;

@Repository("boardDAO")
public class BoardDAO {
	// JDBC 관련 변수
//	private Connection conn = null;
//	private PreparedStatement stmt = null;
//	private ResultSet rs = null;

	private SqlSession mybatis;

	public BoardDAO() {
		mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	// SQL 명령어들

//	private final String INSERT_BOARD = "insert into board_tb(no, title, writer, content,category) values (board_no_seq.nextval,?,?,?,?)";
//	private final String GET_BOARD_LIST = "select * from board_tb order by no desc";
//	private final String BOARD_UPDATE = "update myboard set title=?, content=? where seq=?";
//	private final String BOARD_DELETE = "delete from myboard where seq=?";
//	private final String BOARD_GET = "select * from myboard where seq=?";
//	private final String BOARD_LIST_TITLE = "select * from myboard where title like '%'||?||'%' order by seq desc";
//	private final String BOARD_LIST_CONTENT = "select * from myboard where content like '%'||?||'%' order by seq desc";

	// CRUD 기능의 메소드 구현

	// 게시판 생성
	public void boardClassInsert(BoardClassVO vo) {
		mybatis.insert("BoardDAO.boardClassInsert", vo);
		mybatis.commit();
	}
	// 게시판 목록 조회
	public List<BoardClassVO> boardClassSelectList(BoardClassVO vo) {
		return mybatis.selectList("BoardDAO.boardClassSelectList", vo);
	}

	// 게시판 이름 조회
	public BoardClassVO boardClassSelect(BoardSearchVO vo) {
		return mybatis.selectOne("BoardDAO.boardClassSelect", vo);
	}
	// 게시판 온오프
	public void boardClassOnOff(BoardClassVO vo) {
		mybatis.update("BoardDAO.boardClassOnOff", vo);
		mybatis.commit();
	}
	// 카테고리 생성
	public void boardCategoryInsert(BoardCategoryVO vo) {
		mybatis.insert("BoardDAO.boardCategoryInsert", vo);
		mybatis.commit();
	}
	// 카테고리 조회
	public List<BoardCategoryVO> boardCategorySelectList(BoardSearchVO vo) {
		return mybatis.selectList("BoardDAO.boardCategorySelectList", vo);
	}
	// 카테고리 온오프
	public void boardCategoryOnOff(BoardCategoryVO vo) {
		mybatis.update("BoardDAO.boardCategoryOnOff", vo);
		mybatis.commit();
	}
	
	// 글 등록

	public void boardInsert(BoardVO vo) {
		mybatis.insert("BoardDAO.boardInsert", vo);
		mybatis.commit();
	}

//	public void insertBoard(BoardVO vo) {
//		System.out.println("===> JDBC insertBoard()");
//		System.out.println(vo.getTitle());
//		System.out.println(vo.getContent());
//
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(INSERT_BOARD);
//			stmt.setString(1, vo.getTitle());
//			stmt.setString(2, vo.getWriter());
//			stmt.setString(3, vo.getContent());
//			stmt.setString(4, vo.getCategory());
//			stmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}

	// 글 목록 조회
	public List<BoardVO> boardSelectList(BoardSearchVO vo) {
		return mybatis.selectList("BoardDAO.boardSelectList", vo);
	}
//		public List<BoardVO> getBoardList(BoardVO vo) {
//			System.out.println("===> JDBC getBoardList()");
//			List<BoardVO> boardList = new ArrayList<>();
//			try {
//				conn = JDBCUtil.getConnection();
//				stmt = conn.prepareStatement(GET_BOARD_LIST);
////				if(vo.getSearchCondition().equals("TITLE")) {
////					stmt = conn.prepareStatement(BOARD_LIST_TITLE);
////				}else if(vo.getSearchCondition().equals("CONTENT")) {
////					stmt = conn.prepareStatement(BOARD_LIST_CONTENT);
////				}
////				stmt.setString(1, vo.getSearchKeyword());
//				rs = stmt.executeQuery();
//				while (rs.next()) {
//					BoardVO board = new BoardVO();
//					board.setNo(rs.getInt("no"));
//					board.setTitle(rs.getString("TITLE"));
//					board.setWriter(rs.getString("WRITER"));
//					board.setContent(rs.getString("CONTENT"));
//					board.setRegDate(rs.getString("REGDATE"));
//					board.setCnt(rs.getInt("CNT"));
//					board.setCategory(rs.getString("category"));
//					boardList.add(board);
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//				JDBCUtil.close(rs, stmt, conn);
//			}
//			return boardList;
//		}
//
//	// 글 수정
//	public void updateBoard(BoardVO vo) {
//		System.out.println("===> JDBC로 updateBoard() 기능 처리");
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_UPDATE);
//			stmt.setString(1, vo.getTitle());
//			stmt.setString(2, vo.getContent());
//			stmt.setInt(3, vo.getSeq());
//			stmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}
//
//	// 글 삭제
//	public void deleteBoard(BoardVO vo) {
//		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_DELETE);
//			stmt.setInt(1, vo.getSeq());
//			stmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(stmt, conn);
//		}
//	}
//
//	// 글 상세 조회
//	public BoardVO getBoard(BoardVO vo) {
//		System.out.println("===> JDBC로 getBoard() 기능 처리");
//		BoardVO board = null;
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_GET);
//			stmt.setInt(1, vo.getSeq());
//			rs = stmt.executeQuery();
//			if (rs.next()) {
//				board = new BoardVO();
//				board.setSeq(rs.getInt("SEQ"));
//				board.setTitle(rs.getString("TITLE"));
//				board.setWriter(rs.getString("WRITER"));
//				board.setContent(rs.getString("CONTENT"));
//				board.setRegDate(rs.getDate("REGDATE"));
//				board.setCnt(rs.getInt("CNT"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return board;
//	}
//
//	

	

}