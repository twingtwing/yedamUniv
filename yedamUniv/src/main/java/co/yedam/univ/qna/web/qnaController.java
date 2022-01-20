package co.yedam.univ.qna.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class qnaController {
	
	// 학사 qna 리스트
	@RequestMapping("/qna/haksaQna.do")
	public String haksaQna() {
		return "qna/haksaQna";
	}
	
	// 학사 qna 상세보기
	@RequestMapping("/qna/haksaQnaRead.do")
	public String haksaQnaRead() {
		return "qna/haksaQnaRead";
	}
	 
	// 학사 qna 수정폼
	@RequestMapping("/qna/haksaQnaUpdate.do")
	public String haksaQnaUpdate() {
		return "qna/haksaQnaUpdate";
	}
	
	// 학사 qna 글쓰기폼
	@RequestMapping("/qna/haksaQnaWrite.do")
	public String haksaQnaWrite() {
		return "qna/haksaQnaWrite";
	}
	
	// 장학 qna 리스트
	@RequestMapping("/qna/scholarshipQna.do") 
	public String scholarshipQna() {
		return "qna/scholarshipQna";
	}
	
	// 장학 qna 상세보기
	@RequestMapping("/qna/scholarshipRead.do")
	public String scholarshipRead() {
		return "qna/scholarshipRead";
	}
	
	// 장학 qna 수정폼
	@RequestMapping("/qna/scholarshipUpdate.do")
	public String scholarshipUpdate() {
		return "qna/scholarshipUpdate";
	}
	
	// 장학 qna 글쓰기폼
	@RequestMapping("/qna/scholarshipWrite.do")
	public String scholarshipWrite() {
		return "qna/scholarshipWrite";
	}
	
}
