package co.yedam.univ.qna.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.univ.qna.service.qnaFilesService;
import co.yedam.univ.qna.service.qnaService;
import co.yedam.univ.qna.service.qnaVO;

@Controller
public class adminQnaController {
	
	@Autowired 
	private qnaService qnaDao;
	
	@Autowired
	private qnaFilesService qnaFilesDao;
	
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
	

}
