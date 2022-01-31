package co.yedam.univ.board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class boardController {
	
	// 학사 공지사항 리스트
	@RequestMapping("board/haksaBoardList.do")
	public String haksaBoardList() {
		return "board/haksaBoardList";
	}
	
	// 학사 공지사항 상세보기
	@GetMapping("board/haksaBoardRead.do")
	public String haksaBoardRead() {
		return "board/haksaBoardRead";
	}
	
	// 장학 공지사항 리스트
	@RequestMapping("board/scholarshipBoardList.do")
	public String scholarshipBoardList() {
		return "board/scholarshipBoardList";
	}
	
	// 장학 공지사항 상세보기
	@RequestMapping("board/scholarshipBoardRead.do")
	public String scholarshipBoardRead() {
		return "board/scholarshipBoardRead";
	}
	
	
	
}
