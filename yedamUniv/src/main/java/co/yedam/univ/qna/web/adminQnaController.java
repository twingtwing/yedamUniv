package co.yedam.univ.qna.web;

import java.util.List;

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
	@RequestMapping("/admin/qna/qnaRead.do")
	public String qnaRead(Model model, @Param("qNo") int qNo) {
		qnaVO vo = new qnaVO();
		vo.setqNo(qNo);
		vo = qnaDao.qnaSelect(vo);
		model.addAttribute("qna", vo);
		
		return "admin/qna/qnaRead";
	}
	
	// qna 답변달기
	@RequestMapping("/admin/qna/aUpdate.do")
	@ResponseBody
	public String aUpdate(qnaVO vo) throws Exception {
		String result = "F";
		int res = qnaDao.qnaUpdate(vo);
		if(res>0) {result = "Y";}
		return result;

	}
	

}
