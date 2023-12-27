package com.seolmarket.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.seolmarket.biz.board.BoardCategoryVO;
import com.seolmarket.biz.board.BoardClassVO;
import com.seolmarket.biz.board.BoardSearchVO;
import com.seolmarket.biz.board.BoardService;
import com.seolmarket.biz.board.BoardVO;

@Controller
@SessionAttributes({ "boardVO", "userVO", "boardSearchVO" })
public class BoardController {
	@Autowired
	private BoardService boardService;

	// 다른기능 없이 페이지링크와 페이지파일을 맵핑해주는 역할
	// 페이지파일명 규칙: *Page.jsp / 페이지링크 규칙: *Page.do
	@RequestMapping(value = "/*Page.do")
	public String mainPage(HttpServletRequest request) {
		String uri = request.getRequestURI();
		int index1 = uri.lastIndexOf("/");
		int index2 = uri.lastIndexOf(".");
		uri = uri.substring(index1, index2);
		System.out.println("uri:" + uri);
		return "board" + uri;
	}

	// 관리자 페이지
	@RequestMapping(value = "/admin.do")
	public String admin(BoardClassVO boardClassVO, Model model) {
		System.out.println("admin");

		List<BoardClassVO> boardClassList = boardService.boardClassSelectList(boardClassVO);
		model.addAttribute("boardClassList", boardClassList);
		return "board/adminPage";
	}

	// 글 입력 페이지로 이동
	@RequestMapping(value = "/boardInsertForm.do")
	public String boardInsertForm(BoardSearchVO boardSearchVO, BoardVO boardVO, BoardClassVO boardClassVO,
			BoardCategoryVO boardCategoryVO, Model model) throws IllegalStateException, IOException {
		System.out.println("boardInsertForm");
		System.out.println("boardSearchVO:" + boardSearchVO.getBoardClassNo());
		boardClassVO = boardService.boardClassSelect(boardSearchVO);
//			System.out.println("boardClassVO:"+boardClassVO.getNo());
//			System.out.println("boardVO:"+boardVO.getBoardClassNo());

		List<BoardCategoryVO> boardCategoryList = boardService.boardCategorySelectList(boardSearchVO);

//			System.out.println("boardCategoryList:"+boardCategoryList.toString());

		model.addAttribute("boardCategoryList", boardCategoryList);
		model.addAttribute("boardClassVO", boardClassVO);

		return "board/boardInsertPage";
	}

	// 글입력
	@RequestMapping(value = "/boardInsert.do")
	public String boardInsert(BoardVO boardVO) throws IllegalStateException, IOException {
		System.out.println("boardInsert");
//		MultipartFile uploadFile =  vo.getUploadFile();
		// 글 작성시 첨부한 파일이 있으면 서버저장장치에 저장한다
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			System.out.println("fileName : "+fileName);
//			File file = new File("C:/DEV/fileSave/" + fileName);
//			uploadFile.transferTo(file);
//		}
		boardService.boardInsert(boardVO);
		return "redirect:boardSelectList.do";
	}

	// 글목록보기
	@RequestMapping(value = "/boardSelectList.do")
//	@ModelAttribute("boardSearchVO")
	public String boardSelectList(BoardSearchVO boardSearchVO, BoardClassVO boardClassVO,
			BoardCategoryVO boardCategoryVO, Model model) {
		System.out.println("boardSelectList");
		System.out.println("boardSearchVO:" + boardSearchVO.getBoardCategoryName());
//		System.out.println("boardClassVO1:"+boardClassVO.getNo());
		if (boardSearchVO.getBoardCategoryName() == null) {
			boardSearchVO.setBoardCategoryName("");
		}
		boardClassVO = boardService.boardClassSelect(boardSearchVO);
//		System.out.println("boardClassVO2:"+boardClassVO.getNo());
//		boardCategoryVO.setBoardClassNo(boardClassVO.getNo());

		List<BoardCategoryVO> boardCategoryList = boardService.boardCategorySelectList(boardSearchVO);

//		System.out.println("boardCategoryList:"+boardCategoryList.toString());

		List<BoardVO> boardList = boardService.boardSelectList(boardSearchVO);

		model.addAttribute("boardList", boardList);
		model.addAttribute("boardClassVO", boardClassVO);
		model.addAttribute("boardCategoryList", boardCategoryList);
//		model.addAttribute("category", boardSearchVO.getCategory());
		return "board/boardSelectListPage";
	}

	// 게시판 생성
	@RequestMapping(value = "/boardClassInsert.do")
	public String boardClassInsert(BoardClassVO boardClassVO) {
		System.out.println("boardClassInsert");

		boardService.boardClassInsert(boardClassVO);
		return "redirect:admin.do";
	}

	// 게시판 목록
	@RequestMapping(value = "/boardClassSelectList.do")
	public String boardClassSelectList(BoardClassVO boardClassVO, Model model) {
//		System.out.println("boardClassSelectList");

		List<BoardClassVO> boardClassList = boardService.boardClassSelectList(boardClassVO);
		model.addAttribute("boardClassList", boardClassList);
		return "board/boardClassSelectListPage";
	}

	// 게시판 온오프
	@RequestMapping(value = "/boardClassOnOff.do")
	public String boardClassOnOff(BoardClassVO boardClassVO) {
		System.out.println("boardClassOnOff");
		boardService.boardClassOnOff(boardClassVO);
		return "redirect:admin.do";
	}

	// 카테고리 생성
	@RequestMapping(value = "/boardCategoryInsert.do")
	public String boardCategoryInsert(BoardCategoryVO boardCategoryVO) {
		System.out.println("boardCategoryInsert");

		boardService.boardCategoryInsert(boardCategoryVO);
		return "redirect:boardSelectList.do";
	}

	// 카테고리 온오프
	@RequestMapping(value = "/boardCategoryOnOff.do")
	public String boardCategoryOnOff(BoardCategoryVO BoardCategoryVO) {
		System.out.println("boardCategoryOnOff");
		boardService.boardCategoryOnOff(BoardCategoryVO);
		return "redirect:boardSelectList.do";
	}
	// 카테고리 목록
//	@RequestMapping(value = "/boardCategorySelectList.do")
//	public String boardCategorySelectList(BoardCategoryVO boardCategoryVO, Model model) {
//		System.out.println("boardCategorySelectList");
//
//		List<BoardCategoryVO> BoardCategoryList = boardService.boardCategorySelectList(boardCategoryVO);
//		model.addAttribute("BoardCategoryList", BoardCategoryList);
//		return "board/boardClassSelectListPage";
//	}

	// 게시판 목록
//	@RequestMapping(value = "/boardClassList.do")
//	public String boardClassList(BoardClassVO boardClassVO, Model model) {
//		System.out.println("boardClassList");
//
//		List<BoardClassVO> boardClassList = boardService.boardClassSelectList(boardClassVO);
//		model.addAttribute("boardClassList", boardClassList);
//		return "board/boardClassListPage";
//	}

//	@ModelAttribute("conditionMap")
//	public Map<String,String> searchConditionMap(){
//		Map<String,String> conditionMap = new HashMap<String, String>();
//		conditionMap.put("내용", "CONTENT");
//		conditionMap.put("제목", "TITLE");
//		return conditionMap;
//	}
//
//	@RequestMapping(value = "/deleteBoard.do")
//	public String deleteBoard(BoardVO vo) {
//		System.out.println("deleteBoard");
//		boardService.deleteBoard(vo);
//		return "redirect:getBoardList.do";
//	}
//
//	@RequestMapping(value = "/getBoard.do")
//	public String getBoard(BoardVO vo, Model model) {
//		System.out.println("getBoard");
//		BoardVO board = boardService.getBoard(vo);
//		model.addAttribute("board", board);
//		return "getBoard";
//	}
//

//

//
//	@RequestMapping(value = "/updateBoard.do")
//	public String updateBoard(@ModelAttribute("board") BoardVO vo) {
//		System.out.println("updateBoard");
//		System.out.println(vo.toString());
//		boardService.updateBoard(vo);
//		return "redirect:getBoardList.do";
//	}
}
