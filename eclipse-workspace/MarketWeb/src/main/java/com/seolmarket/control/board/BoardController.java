package com.seolmarket.control.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.seolmarket.biz.board.BoardService;


@Controller
//@SessionAttributes({"board","user","notice"})
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	
		@RequestMapping(value = "/mainPage.do")
	public String mainPage() {
		return "board/mainPage";
	}
		
		@RequestMapping(value = "/loginPage.do")
		public String loginPage() {
			return "board/loginPage";
		}
	
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
//	@RequestMapping(value = "/getBoardList.do")
//	public String getBoardList(BoardVO vo, Model model) {
//		System.out.println("getBoardList");
//		//검색정보 Null Check
//		if(vo.getSearchCondition()==null) {vo.setSearchCondition("TITLE");}
//		if(vo.getSearchKeyword()==null) {vo.setSearchKeyword("");}
//		List<BoardVO> boardList = boardService.getBoardList(vo);
//		model.addAttribute("boardList", boardList);
//		return "getBoardList";
//	}
//
//	@RequestMapping(value = "/insertBoard.do")
//	public String insertBoard(BoardVO vo) throws IllegalStateException, IOException {
//		System.out.println("insertBoard");
//		MultipartFile uploadFile =  vo.getUploadFile();
//		//글 작성시 첨부한 파일이 있으면 서버저장장치에 저장한다
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			System.out.println("fileName : "+fileName);
//			File file = new File("C:/DEV/fileSave/" + fileName);
//			uploadFile.transferTo(file);
//		}
//		
//		boardService.insertBoard(vo);
//		return "redirect:getBoardList.do";
//	}
//
//	@RequestMapping(value = "/updateBoard.do")
//	public String updateBoard(@ModelAttribute("board") BoardVO vo) {
//		System.out.println("updateBoard");
//		System.out.println(vo.toString());
//		boardService.updateBoard(vo);
//		return "redirect:getBoardList.do";
//	}
}