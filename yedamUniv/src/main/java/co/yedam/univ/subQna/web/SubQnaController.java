package co.yedam.univ.subQna.web;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.univ.sub.service.SubService;
import co.yedam.univ.sub.service.SubVO;

@Controller
public class SubQnaController {
	@Autowired
	SubService subDao;
	//select
		@GetMapping("pro/subQnaList.do")
	public String subQnaList(HttpSession session, SubVO vo, @Param("subNo") int subNo, @Param("subName")String subName,Model model) {
			vo.setSubjectNo(subNo);
			vo.setSubjectName(subName);
			vo.setProId((String)session.getAttribute("id"));
			model.addAttribute("subNo", vo.getSubjectNo());
			model.addAttribute("subName", vo.getSubjectName());
			model.addAttribute("qnaLists", subDao.subjectQnAList(vo)); 
			
			return "pro/subQna/subQnaList";
	}
	
	//select
	@GetMapping("pro/subQnaSelect.do")
	public String subQnaSelect(@Param("sqNo") int sqNo, SubVO vo, @Param("subNo") int subNo, @Param("subName")String subName,Model model) {
		vo.setSubjectNo(subNo);
		vo.setSubjectName(subName);
		vo.setSqNo(sqNo);
		model.addAttribute("subNo", vo.getSubjectNo());
		model.addAttribute("subName", vo.getSubjectName());
		model.addAttribute("sqNo", vo.getSqNo());
		model.addAttribute("qnaList", subDao.subjectQnaSelect(vo));
		
		return "pro/subQna/subQnaSelect";
	}
	
	@PostMapping("pro/qnaAnswerUpdate.do")
	@ResponseBody
	public String qnaAnswerUpdate(SubVO vo,HttpSession session,@RequestParam("sqNo")int sqNo,@RequestParam("proId") String proId,@RequestParam("saContents")String contents) {
		String result="N";
		System.out.println(proId);
		
			vo.setProId(proId);
			vo.setSqNo(sqNo);
			vo.setSqContents(contents);
			int n=subDao.qnaAnswerUpdate(vo);
			System.out.println(n);
			if(n!=0) {
				result="Y";
				System.out.println(result);
				return result;
		}
			System.out.println(result);
	
		
		return result; 
	}
	
	@PostMapping("pro/qnaAnswerInsert.do")
	@ResponseBody
	public String qnaAnswerInsert(SubVO vo,HttpSession session,@RequestParam("sqNo")int sqNo,@RequestParam("proId") String proId,@RequestParam("saContents")String contents,@RequestParam("subNo")int subNo) {
		String result="N";
		vo.setSqNo(sqNo);
		vo.setProId(proId);
		vo.setSaContents(contents);
		vo.setSubjectNo(subNo);
		int n =subDao.qnaAnswerInsert(vo);
		if(n!=0) {
			result="Y";
			return result;
		}
		return result;
	}
	
	@PostMapping("pro/qnaAnswerDelete.do")
	@ResponseBody
	public String qnaAnswerDelete(SubVO vo,HttpSession session,@RequestParam("sqNo")int sqNo,@RequestParam("subNo")int subNo) {
		String result="N";
		vo.setProId((String)session.getAttribute("id"));
		vo.setSqNo(sqNo);
		vo.setSubjectNo(subNo);
		int n= subDao.qnaAnswerDelete(vo);
		if(n!=0) {
			result="Y";
			return result;
		}
		return result;
	}

}
