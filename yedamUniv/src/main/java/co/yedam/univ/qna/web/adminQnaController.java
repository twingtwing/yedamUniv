package co.yedam.univ.qna.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.qna.service.qnaFilesService;
import co.yedam.univ.qna.service.qnaService;
import co.yedam.univ.qna.service.qnaVO;

@Controller
public class adminQnaController {

	@Autowired
	private qnaService qnaDao;

	@Autowired
	private qnaFilesService qnaFilesDao;

	// qna 리스트
	@RequestMapping("/admin/listQnA.do")
	public String listQnA(Model model) {

		List<qnaVO> qnalist;
		qnalist = qnaDao.qnaSelectList();

//		for(qnaVO vo : qnalist) {
//			System.out.println(vo);
//		}

		model.addAttribute("qnalist", qnalist);

		return "admin/Notice/listQnA";
	}

	// qna 상세보기
	@RequestMapping("/admin/qnaRead.do")
	public String qnaRead(Model model, @Param("qNo") int qNo) {
		qnaVO vo = new qnaVO();
		vo.setqNo(qNo);
		vo = qnaDao.qnaSelect(vo);
		model.addAttribute("qna", vo);

		return "admin/qna/qnaRead";
	}

	// qna 답변달기
	@ResponseBody
	@RequestMapping("/admin/aUpdate.do")
	public String aUpdate(qnaVO vo, /*@Param("empId") String eid, @Param("aContents") String con,*/ HttpSession session) {
		String result = "F";

		String empId = (String) session.getAttribute("empId");
		vo.setEmpId(empId);
		
		int res = qnaDao.qnaAnswer(vo);
		if (res > 0) {
			result = "Y";
		}
		return result;

	}

	// qna 글 삭제하기
	@RequestMapping("/admin/QnaDelete.do")
	public String QnaDelete(int qNo) {

		int r = qnaDao.qnaDelete(qNo);
		if (r > 0) {
			return "redirect:listQnA.do";
		} else {
			return "redirect:qnaRead.do?qNo=" + qNo;
		}
	}

	// qna 검색하기
	@RequestMapping("/admin/QnaSearch")
	@ResponseBody
	public List<qnaVO> QnaSearch(qnaVO vo) {
		if(vo.getqTitle().length() == 0) {vo.setqTitle(null);}
		return qnaDao.qnaSearch(vo);
	}
}
