package co.yedam.univ.qna.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.qna.service.qnaService;
import co.yedam.univ.qna.service.qnaVO;

@Controller
public class qnaController {
	
	@Autowired 
	private qnaService qnaDao;
	
	// 학사 qna 리스트
	@RequestMapping("/qna/haksaQna.do")
	public String haksaQna(Model model) {
		
		List<qnaVO> qnalist;
		qnalist = qnaDao.qnaSelectList();
		
//		for(qnaVO vo : qnalist) {
//			System.out.println(vo);
//		}
		
		model.addAttribute("qnalist", qnalist);
		
		return "qna/haksaQna";
	}
	
	// 학사 qna 상세보기
	@RequestMapping("/qna/haksaQnaRead.do")
	public String haksaQnaRead(Model model, @Param("qNo") int qNo) {
		qnaVO vo = new qnaVO();
		vo.setqNo(qNo);
		vo = qnaDao.qnaSelect(vo);
		model.addAttribute("qna", vo);
		
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
	
	// 학사 qna 글 등록하기
	@RequestMapping("hQnaInsert.do")
	@ResponseBody
	public void hQnaInsert(qnaVO vo, HttpSession session) {
		
		//String id = (String) session.getAttribute("id");
		String id = "pp0332"; // 임시로 아이디 저장
		vo.setstuId(id);
		qnaDao.qnaInsert(vo);
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
